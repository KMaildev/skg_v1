@if ($request_info->accept_reject_status == null)
    <div class="form-check form-check-inline">
        <input class="form-check-input" type="radio" name="accept_reject_status_{{ $request_info->id }}"
            id="accept_{{ $request_info->id }}" onclick="updateFixedAssetsAcceptRejectStatus(this);" value="accept">
        <label class="form-check-label" for="accept_{{ $request_info->id }}">
            Accept
        </label>
    </div>

    <div class="form-check form-check-inline">
        <input class="form-check-input" type="radio" name="accept_reject_status_{{ $request_info->id }}"
            id="reject_{{ $request_info->id }}" onclick="updateFixedAssetsAcceptRejectStatus(this);" value="reject">
        <label class="form-check-label" for="reject_{{ $request_info->id }}">
            Reject
        </label>
    </div>
@elseif($request_info->accept_reject_status == 'accept')
    <div class="form-check form-check-inline">
        <input class="form-check-input" type="radio" name="accept_reject_status_{{ $request_info->id }}"
            id="accept_{{ $request_info->id }}" value="accept" checked onclick="javascript: return false;">
        <label class="form-check-label" for="accept_{{ $request_info->id }}">
            Accept
        </label>
    </div>

    <div class="form-check form-check-inline">
        <input class="form-check-input" type="radio" name="accept_reject_status_{{ $request_info->id }}"
            id="reject_{{ $request_info->id }}" value="reject" onclick="javascript: return false;">
        <label class="form-check-label" for="reject_{{ $request_info->id }}">
            Reject
        </label>
    </div>
@elseif($request_info->accept_reject_status == 'reject')
    <div class="form-check form-check-inline">
        <input class="form-check-input" type="radio" name="accept_reject_status_{{ $request_info->id }}"
            id="accept_{{ $request_info->id }}" value="accept" onclick="javascript: return false;">
        <label class="form-check-label" for="accept_{{ $request_info->id }}">
            Accept
        </label>
    </div>

    <div class="form-check form-check-inline">
        <input class="form-check-input" type="radio" name="accept_reject_status_{{ $request_info->id }}"
            id="reject_{{ $request_info->id }}" value="reject" checked onclick="javascript: return false;">
        <label class="form-check-label" for="reject_{{ $request_info->id }}">
            Reject
        </label>
    </div>
@endif



<br>
<input type="text" placeholder="Remark" value="{{ $request_info->accept_reject_remark ?? '' }}"
    class="fixedAssetsUpdateAcceptRejectRemark" data-id="{{ $request_info->id }}" />
<br>
<span style="font-size: 12px;">
    {{ $request_info->accept_reject_date }}
</span>
