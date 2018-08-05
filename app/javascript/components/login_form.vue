<template>
    <v-layout justify-center>
        <v-snackbar
                v-model="snackbar"
                absolute
                top
                right
                color="success"
        >
            <span>ログインが完了しました</span>
            <v-icon dark>check_circle</v-icon>
        </v-snackbar>
        <v-flex xs12 sm10 md8 lg6>
            <v-form ref="form" v-model="valid" lazy-validation>
                <v-text-field
                    v-model="email"
                    :rules="emailRules"
                    label="メールアドレス"
                    required
                    loading
                ></v-text-field>
                <v-text-field
                    v-model="password"
                    :append-icon="showPass? 'visibility_off':'visibility'"
                    :rules="passRules"
                    :type="showPass? 'text':'password'"
                    :counter="10"
                    label="パスワード"
                    @click:append="showPass = !showPass"
                    required
                ></v-text-field>

                <v-btn :disabled="!valid" @click="submit">ログイン</v-btn>
                <v-btn @click="clear">やり直す</v-btn>
            </v-form>
        </v-flex>
    </v-layout>
</template>

<script>
    export default {
        data: function () {
            return {
                email: "",
                password: "",
                valid: true,
                showPass: false,
                snackbar: false,
                emailRules: [
                    v => !!v || 'メールアドレスを入力してください',
                    v => /.+@.+/.test(v) || '正しい入力をしてください'
                ],
                passRules: [
                    v => !!v || 'パスワードを入力してください',
                    v => (v && v.length <= 10) || 'パスワードは10文字以下です'
                ]
            }
        },
        methods: {
            submit() {
                if (this.$refs.form.validate()){

                }
                this.snackbar = true
            },
            clear() {
                this.$refs.form.reset()
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