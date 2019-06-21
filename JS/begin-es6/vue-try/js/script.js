let vm = new Vue(
    {
        el: '#app', //element
        data: { //propriétés de l'element
            webSite: "Vozoul.free.fr", //propriété webSite
            message: "ici un second message",
            hidded: true,
        },
        methods: {
            // <nom_function>: function(){
            // },
            change_msg: function(){
                this.message = 'le message viens de changer'
            }
        },

    }
)