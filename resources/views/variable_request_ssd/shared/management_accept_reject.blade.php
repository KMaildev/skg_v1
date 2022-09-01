<form class="management_accept_reject_ajax_save" action="#" method="POST" id="create-form" autocomplete="off">
    @csrf
    <div>
        <div class="modal fade" id="ManagementAssetRejectModelShowHide" tabindex="-1" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="modalCenterTitle">
                            Accept / Reject
                        </h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="row">
                            <div class="mb-3">
                                <input type="hidden" name="request_info_id" required id="management_request_info_id">
                                <select class="form-select" name="management_accept_reject_status" required
                                    id="management_accept_reject_status">
                                    <option selected="" value="">
                                        --Select Status--
                                    </option>
                                    <option value="accept">
                                        Accept
                                    </option>
                                    <option value="reject">
                                        Reject
                                    </option>
                                </select>
                                <br>
                                <input type="text" placeholder="Remark" name="remark" class="form-control"
                                    id="remark">
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-label-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Save</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>
