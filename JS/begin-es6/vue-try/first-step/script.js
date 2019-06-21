let vm = new Vue(
    {
        el: '#app', //element
        data: { //propriétés de l'element
            message: "Vozoul.free.fr",
            message2: "message origine",
            // success: true,
            cls: 'success',
            link: "http://vozoul.free.fr",
            show: false,
        },
        methods: {
            modif: function(){
                this.message2 = "message modifié";
            },
            style: function () {
                if(this.success){
                    return {color: '#F00'}
                }else{
                    return {color: '#0F0'}
                }
            }
        },

    }
)