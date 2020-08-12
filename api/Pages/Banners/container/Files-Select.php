<script>
    $(function(){
        //Banner1
        $('#btn1').on('click', function() {
            $('#banner1').trigger('click');
        });
        $('#banner1').on('change', function() {
            var fileName1 = $(this)[0].files[0].name;
            $('#file1').val(fileName1);
        });

        //Banner2
        $('#btn2').on('click', function() {
            $('#banner2').trigger('click');
        });
        $('#banner2').on('change', function() {
            var fileName2 = $(this)[0].files[0].name;
            $('#file2').val(fileName2);
        });

        //Banner3
        $('#btn3').on('click', function() {
            $('#banner3').trigger('click');
        });
        $('#banner3').on('change', function() {
            var fileName3 = $(this)[0].files[0].name;
            $('#file3').val(fileName3);
        });

        //Banner4
        $('#btn4').on('click', function() {
            $('#banner4').trigger('click');
        });
        $('#banner4').on('change', function() {
            var fileName4 = $(this)[0].files[0].name;
            $('#file4').val(fileName4);
        });

        //Banner5
        $('#btn5').on('click', function() {
            $('#banner5').trigger('click');
        });
        $('#banner5').on('change', function() {
            var fileName5 = $(this)[0].files[0].name;
            $('#file5').val(fileName5);
        });        

    });
</script>