$(document).ready(function(){
    $('#sidebarCollapse').on('click', function() {
        $('#sidebar').toggleClass('active');
        $('.navbar-header').toggleClass('viewable');

        if ($('#sidebarCollapse i').attr('class') === 'fas fa-arrow-right'){
            $('#sidebarCollapse i').removeClass('fa-arrow-right')
            $('#sidebarCollapse i').addClass('fa-arrow-left')
        }else if ($('#sidebarCollapse i').attr('class') === 'fas fa-arrow-left'){
            $('#sidebarCollapse i').removeClass('fa-arrow-left')
            $('#sidebarCollapse i').addClass('fa-arrow-right')
        }


    });
});
