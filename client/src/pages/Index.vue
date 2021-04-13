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
        >
          <template v-slot:append>
            <q-icon name="search" />
          </template>
        </q-input>
      </div>
      <q-btn color="white" text-color="black" label="Nova tarefa" @click="persistent = true" />
      <q-dialog
        v-model="persistent"
        persistent
        transition-show="scale"
        transition-hide="scale"
      >
        <q-card class="bg-teal text-white" style="width: 300px">
          <q-card-section>
            <div class="text-h6">Persistent</div>
          </q-card-section>

          <q-card-section class="q-pt-none"> Click/Tap on the backdrop. </q-card-section>

          <q-card-actions align="right" class="bg-white text-teal">
            <q-btn flat label="OK" v-close-popup />
          </q-card-actions>
        </q-card>
      </q-dialog>
    </div>
    <div class="row q-pa-md">
      <div style="width: 20%" class="q-pa-md" v-for="item in items" :key="item.title">
        <q-card class="my-card">
          <q-card-section class="row justify-between text-h6">
            {{ item.title }}
            <q-icon name="check_circle" @click="complete_task" class="text-grey" />
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
          title: "titulo",
          description: "Descrição elaborada",
        },
        {
          title: "titulo",
          description: "Descrição elaborada",
        },
        {
          title: "titulo",
          description: "Descrição elaborada",
        },
        {
          title: "titulo",
          description: "Descrição elaborada",
        },
        {
          title: "titulo",
          description: "Descrição elaborada",
        },
        {
          title: "titulo",
          description: "Descrição elaborada",
        },
        {
          title: "titulo",
          description: "Descrição elaborada",
        },
        {
          title: "titulo",
          description: "Descrição elaborada",
        },
        {
          title: "titulo",
          description: "Descrição elaborada",
        },
        {
          title: "titulo",
          description: "Descrição elaborada",
        },
        {
          title: "titulo",
          description: "Descrição elaborada",
        },
        {
          title: "titulo",
          description: "Descrição elaborada",
        },
        {
          title: "titulo",
          description: "Descrição elaborada",
        },
        {
          title: "titulo",
          description: "Descrição elaborada",
        },
        {
          title: "titulo",
          description: "Descrição elaborada",
        },
        {
          title: "titulo",
          description: "Descrição elaborada",
        },
        {
          title: "titulo",
          description: "Descrição elaborada",
        },
        {
          title: "titulo",
          description: "Descrição elaborada",
        },
        {
          title: "titulo",
          description: "Descrição elaborada",
        },
      ],
    };
  },
  methods: {
    complete_task() {
      console.log("click");
    },
  },
};
</script>

<style lang="sass" scoped>
.my-card
  width: 100%
</style>
