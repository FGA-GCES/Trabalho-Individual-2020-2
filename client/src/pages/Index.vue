<template>
  <q-page class="q-pt-xl q-px-xl">
    <div class="row justify-between">
      <div style="width: 30%">
        <q-input
          bg-color="white"
          color="white"
          outlined
          v-model="text"
          placeholder="Titulo da tarefa..."
          @input="filterTasks"
        >
          <template v-slot:append>
            <q-icon name="search" />
          </template>
        </q-input>
      </div>
      <q-btn
        color="white"
        text-color="black"
        label="Nova tarefa changed"
        @click="persistent = true"
      />
      <q-dialog
        v-model="persistent"
        persistent
        transition-show="scale"
        transition-hide="scale"
      >
        <q-card style="width: 30%; height: 45%">
          <q-card-section>
            <div class="text-h4">Nova tarefa</div>
          </q-card-section>

          <q-card-section>
            <q-input filled v-model="title" label="Titulo" />
          </q-card-section>
          <q-card-section>
            <q-input filled v-model="description" type="textarea" label="Descrição" />
          </q-card-section>

          <q-card-actions align="right" class="bg-white text-teal">
            <q-btn flat label="Cancel" v-close-popup />
            <q-btn flat label="OK" @click="createNewTask" />
          </q-card-actions>
        </q-card>
      </q-dialog>
    </div>
    <div class="row">
      <div
        style="min-width: 250px; width: 25%"
        class="q-pa-md"
        v-for="item in filteredItems"
        :key="item.pk"
      >
        <q-card class="my-card">
          <q-card-section class="row justify-between text-h6">
            {{ item.title }}
            <q-icon name="close" @click="complete_task(item)" class="text-grey" />
          </q-card-section>
          <q-separator inset />
          <q-card-section>
            {{ item.description }}
          </q-card-section>
        </q-card>
      </div>
    </div>
  </q-page>
</template>

<script>
import axios from 'axios';
const BASE_URL = 'http://0.0.0.0:8000'
export default {
  name: "PageIndex",
  data() {
    return {
      text: "",
      persistent: false,
      items: [],
      filteredItems: [],
      title: "",
      description: "",
    };
  },
  async beforeMount() {
    await axios.get(`${BASE_URL}/task/`)
    .then((res) => {
      this.items = res.data;
    })
    .catch((err) => {
        console.error(err);
        alert('Ocorreu algum erro.');
    })
    this.filteredItems = this.items;
  },
  methods: {
    async complete_task(task) {
      await axios.delete(`${BASE_URL}/task/delete/${task.pk}/`)
      .then((res) => {
        this.items = this.items.filter((item) => item.pk !== task.pk);
        this.filterTasks();
      })
      .catch((err) => {
        console.error(err);
        alert('Ocorreu algum erro ao concluir a tarefa.');
      })
    },
    filterTasks() {
      this.filteredItems = this.items.filter((item) => item.title.includes(this.text));
    },
    async createNewTask() {
      await axios.post(`${BASE_URL}/task/create/`, {
        title: this.title,
        description: this.description
      })
      .then((res) => {
        this.items.push(res.data);
        this.title = '';
        this.description = '';
        this.persistent = false;
        this.filterTasks();
      })
      .catch((err) => {
        console.error(err);
        alert('Ocorreu algum erro ao criar a tarefa.');
      })
    }
  },
};
</script>

<style lang="sass" scoped></style>
