var app = new Vue({
    el: '#app',
    delimiters: ['<%', '%>'],
    data: {
        messages:[],
        username:'',
        form:{
            user:'',
            message:''
        }
    },
    mounted(){
        this.username = JSON.parse(document.getElementById('username').textContent);
        this.form.user = JSON.parse(document.getElementById('user_id').textContent);
        
        this.loadMessages()
        this.repeat()
        
    },

    methods: {
        sendMessage: function () {

            // axios.post(`${window.location.protocol}//${window.location.host}/apiREST/PublicChatMessagesPost/`,            
            axios.post('/apiREST/PublicChatMessagesPost/',
            this.form,
            {headers: {"X-CSRFToken": Cookies.get('csrftoken')}},)
            .then(response => {
                this.form.message=""
                this.loadMessages()
            })
            .catch(error => {
                console.log(error);
            });
            
        },

        loadMessages: function(){
            // axios.get(`${window.location.protocol}//${window.location.host}/apiREST/PublicChatMessages/`,
            axios.get('/apiREST/PublicChatMessages/',
            {headers: {"X-CSRFToken": Cookies.get('csrftoken')}})
            .then(response => {
                this.messages = response.data;            
            })
            .catch(response => {
                console.log(error);
            });
        },

        deleteMessage: function(id){
            axios.delete(`/apiREST/PublicChatMessagesPost/${id}`,
            {headers: {"X-CSRFToken": Cookies.get('csrftoken')}})
            .then(response => {
                this.loadMessages()
            })
            .catch(response => {
                console.log(error);
            });
        },

        repeat: function(){           
            this.intervalid1 = setInterval(function(){
                this.loadMessages()
            }.bind(this), 2000);
        }
    }
})