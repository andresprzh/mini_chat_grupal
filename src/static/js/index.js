var app = new Vue({
    el: '#app',
    delimiters: ['<%', '%>'],
    data: {
        messages:[],
        username:'',
        message: 'Hello Vue!'
    },
    mounted(){
        const username = JSON.parse(document.getElementById('username').textContent);
        this.username = username
        
        // axios.get(`${window.location.protocol}//${window.location.host}/apiREST/apiREST/PublicChatMessages/`,)
        axios.get(`http://localhost:8000/apiREST/PublicChatMessages/`,)
        .then(response => {
            this.messages = response.data;            
        })
        .catch(response => {
            console.log(error);
        });
    },

    methods: {
        sendMessage: function () {
            console.log(this.messages)
        }
    }
})