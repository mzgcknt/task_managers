<template>
    <v-app id="inspire">
        <v-navigation-drawer fixed v-model="drawer" app>
            <v-list class="pa-0">
                <v-list-tile avatar>
                    <v-list-tile-avatar>
                        <img src="https://randomuser.me/api/portraits/men/85.jpg">
                    </v-list-tile-avatar>
                    <v-list-tile-content>
                        <v-list-tile-title>John Leider</v-list-tile-title>
                    </v-list-tile-content>
                </v-list-tile>
            </v-list>
            <v-list class="pt-0" dense>
                <v-divider></v-divider>
                <v-list-tile v-for="item in items" :key="item.title" :to="item.link">
                    <v-list-tile-action>
                        <v-icon>{{ item.icon }}</v-icon>
                    </v-list-tile-action>
                    <v-list-tile-content>
                        <v-list-tile-title>{{ item.title }}</v-list-tile-title>
                    </v-list-tile-content>
                </v-list-tile>
            </v-list>
        </v-navigation-drawer>

      <v-toolbar dark color="primary" fixed app>
          <v-toolbar-side-icon @click.stop="drawer = !drawer"></v-toolbar-side-icon>
          <v-toolbar-title class="white--text">Title</v-toolbar-title>
          <v-spacer></v-spacer>
          <v-btn icon>
          <v-icon>search</v-icon>
          </v-btn>
      </v-toolbar>
      <v-content>
          <v-container fluid fill-height>
              <router-view></router-view>
          </v-container>
      </v-content>
    </v-app>
</template>

<script>
export default {
  data: function () {
    return {
      message: "Hello Vue!",
        drawer: false,
        items: [
            { title: 'ログイン', icon: 'meeting_room', link: '/login'}
        ],
        right: null
    }
  }
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
