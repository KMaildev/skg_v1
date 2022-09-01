</div>
</div>
</body>


<script src="{{ asset('assets/vendor/libs/jquery/jquery.js') }}"></script>
<script src="{{ asset('assets/vendor/libs/popper/popper.js') }}"></script>
<script src="{{ asset('assets/vendor/js/bootstrap.js') }}"></script>
<script src="{{ asset('assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js') }}"></script>
<script src="{{ asset('assets/vendor/libs/hammer/hammer.js') }}"></script>
<script src="{{ asset('assets/vendor/libs/i18n/i18n.js') }}"></script>
<script src="{{ asset('assets/vendor/libs/typeahead-js/typeahead.js') }}"></script>

<script src="{{ asset('assets/vendor/js/menu.js') }}"></script>
<script src="{{ asset('assets/vendor/libs/apex-charts/apexcharts.js') }}"></script>
<script src="{{ asset('assets/vendor/libs/sweetalert2/sweetalert2.js') }}"></script>
<script src="{{ asset('assets/js/main.js') }}"></script>
<script src="{{ asset('assets/js/dashboards-analytics.js') }}"></script>
<script src="{{ asset('assets/js/extended-ui-sweetalert2.js') }}"></script>


{{-- <script src="{{ asset('assets/vendor/libs/select2/select2.js') }}"></script> --}}
{{-- <script src="{{ asset('assets/vendor/libs/bootstrap-select/bootstrap-select.js') }}"></script> --}}
{{-- <script src="{{ asset('assets/js/forms-selects.js') }}"></script> --}}

<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.5/js/select2.full.min.js"></script>
<script src="{{ asset('js/selects_form.js') }}"></script>

<script src="{{ asset('assets/vendor/libs/moment/moment.js') }}"></script>
<script src="{{ asset('assets/vendor/libs/flatpickr/flatpickr.js') }}"></script>

<script src="{{ asset('assets/vendor/libs/bootstrap-datepicker/bootstrap-datepicker.js') }}"></script>
<script src="{{ asset('assets/vendor/libs/bootstrap-daterangepicker/bootstrap-daterangepicker.js') }}"></script>
<script src="{{ asset('assets/vendor/libs/jquery-timepicker/jquery-timepicker.js') }}"></script>

<script src="{{ asset('assets/js/forms-pickers.js') }}"></script>

<script src="{{ asset('assets/vendor/libs/dropzone/dropzone.js') }}"></script>
<script src="{{ asset('assets/js/forms-file-upload.js') }}"></script>

<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
<script type="text/javascript" src="{{ url('vendor/jsvalidation/js/jsvalidation.js') }}"></script>

{{-- Daterange picker --}}
{{-- <script type="text/javascript" src="{{ asset('js/moment.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('js/daterangepicker.min.js') }}"></script> --}}

<script src="{{ asset('assets/vendor/libs/tagify/tagify.js') }}"></script>
<script src="{{ asset('assets/js/forms-tagify.js') }}"></script>

<script src="{{ asset('assets/vendor/libs/toastr/toastr.js') }}"></script>
<script src="{{ asset('assets/js/main.js') }}"></script>
<script src="{{ asset('assets/js/ui-toasts.js') }}"></script>

{{-- My Script --}}
<script src="{{ asset('install/datetime/jquery.datetimepicker.js') }}"></script>
<script type="text/javascript" src="{{ asset('js/custom.js') }}"></script>

<script type="text/javascript" src="{{ asset('assets/vendor/libs/datatables/jquery.dataTables.js') }}"></script>

@yield('script')


{{-- Delete --}}
<script type="text/javascript">
    $('.del_confirm').click(function(event) {
        var form = $(this).closest("form");
        event.preventDefault();
        Swal.fire({
            text: "Are you sure you want to delete this record?",
            showCancelButton: true,
            customClass: {
                confirmButton: 'btn btn-primary me-3',
                cancelButton: 'btn btn-label-secondary'
            },
            buttonsStyling: false,
            buttons: true,
            dangerMode: true,
        }).then((res) => {
            if (res.isConfirmed) {
                form.submit();
            }
        });
    });
</script>

{{-- Select Auto Color --}}
<script type="text/javascript">
    $(function() {
        var lastItem = localStorage.getItem("select_id");
        $('#' + lastItem).addClass("selected_row");
    });

    let prevIx
    let prevTr

    function selectTableRow(id, tr, className) {
        localStorage.setItem("select_id", id);
        let ix = tr.rowIndex
        if (ix === prevIx) {
            // row already selected, so unselect
            tr.className = tr.className.replace(className, "")
            prevIx = null
            prevTr = null
        } else {
            // no selected rows
            if (prevTr) {
                // unselect previously selected row
                prevTr.className = prevTr.className.replace(className, "")
            }
            // select current row
            tr.className += className
            prevIx = ix
            prevTr = tr
        }
    }


    $(document).on("click", ".rm", function() {
        if ($(this).text() == "More") {
            $(this).text("Less");
            $(this).parent().children(".more").show();
            $(this).parent().children(".short").hide();
        } else {
            $(this).text("More");
            $(this).parent().children(".more").hide();
            $(this).parent().children(".short").show();
        }
    });
</script>


{{-- Form Submit --}}
<script>
    jQuery(function() {
        jQuery('#submit_form').change(function() {
            this.form.submit();
        });
    });
</script>


<script>
    $('.manage_accept_reject_save').submit(function(e) {
        e.preventDefault();
        let form = $(this);
        let data = form.serializeArray();

        var _token = data[0].value;
        var request_info_id = data[1].value;
        var management_accept_reject_status = data[2].value;
        var remark = data[3].value;

        var url = '{{ url('save_management_reject') }}';
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });

        $.ajax({
            method: 'POST',
            url: url,
            data: {
                request_info_id: request_info_id,
                management_accept_reject_status: management_accept_reject_status,
                remark: remark
            },
            success: function(data) {
                toastr.success("Your processing has been completed.");
            },
            error: function(data) {
                console.log(data)
                // location.reload();
            }
        });
    });
</script>

<script>
    $('img[data-enlargeable]').addClass('img-enlargeable').click(function() {
        var src = $(this).attr('src');
        var modal;

        function removeModal() {
            modal.remove();
            $('body').off('keyup.modal-close');
        }
        modal = $('<div>').css({
            background: 'RGBA(0,0,0,.5) url(' + src + ') no-repeat center',
            backgroundSize: 'contain',
            width: '100%',
            height: '100%',
            position: 'fixed',
            zIndex: '10000',
            top: '0',
            left: '0',
            cursor: 'zoom-out'
        }).click(function() {
            removeModal();
        }).appendTo('body');
        //handling ESC
        $('body').on('keyup.modal-close', function(e) {
            if (e.key === 'Escape') {
                removeModal();
            }
        });
    });
</script>

<script>
    $(document).ready(function() {
        $("#myInput").on("keyup", function() {
            var value = $(this).val().toLowerCase();
            $("#tablecontents tr").filter(function() {
                $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
            });
        });
    });
</script>

</html>
