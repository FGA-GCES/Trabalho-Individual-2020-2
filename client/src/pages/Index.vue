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
        label="Nova tarefa"
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
        :key="item.title"
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
export default {
  name: "PageIndex",
  data() {
    return {
      text: "",
      persistent: false,
      items: [
        {
          title: "titulo1",
          description: "Descrição elaborada",
        },
        {
          title: "titulo2",
          description: "Descrição elaborada",
        },
        {
          title: "titulo3",
          description: "Descrição elaborada",
        },
        {
          title: "titulo4",
          description: "Descrição elaborada",
        },
        {
          title: "titulo5",
          description: "Descrição elaborada",
        },
        {
          title: "titulo6",
          description: "Descrição elaborada",
        },
        {
          title: "titulo7",
          description: "Descrição elaborada",
        },
        {
          title: "titulo8",
          description: "Descrição elaborada",
        },
        {
          title: "titulo9",
          description: "Descrição elaborada",
        },
        {
          title: "titulo12",
          description: "Descrição elaborada",
        },
        {
          title: "titulo123",
          description: "Descrição elaborada",
        },
        {
          title: "titulo321",
          description: "Descrição elaborada",
        },
        {
          title: "titulo541",
          description: "Descrição elaborada",
        },
        {
          title: "titul66o",
          description: "Descrição elaborada",
        },
        {
          title: "titulo2441",
          description: "Descrição elaborada",
        },
        {
          title: "tit1ulo",
          description: "Descrição elaborada",
        },
        {
          title: "titulo2",
          description: "Descrição elaborada",
        },
        {
          title: "titul42o",
          description: "Descrição elaborada",
        },
        {
          title: "titulo543",
          description: "Descrição elaborada",
        },
      ],
      filteredItems: [],
      title: "",
      description: "",
    };
  },
  beforeMount() {
    this.filteredItems = this.items;
  },
  methods: {
    complete_task(task) {
      this.items = this.items.filter((item) => item.title !== task.title);
      this.filterTasks();
    },
    filterTasks() {
      this.filteredItems = this.items.filter((item) => item.title.includes(this.text));
    },
    createNewTask() {
      console.log("criado");
      this.persistent = false;
    },
  },
};
</script>

<style lang="sass" scoped></style>
