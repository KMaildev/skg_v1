@php
//End Day Define
$endDay = \Carbon\Carbon::createFromFormat('Y-m-d H:i:s', $project->created_at);
$endDay = $endDay->addDays(10);
//End Day Define

$endDate = now()->shortRelativeDiffForHumans($endDay, null, false);
$ednDateArr = explode(' ', $endDate);
$quotationProposalStatus = $ednDateArr[1];
@endphp

@if ($project->structure_design_status == 'finished')
    <li class="d-flex mb-2">
        <div class="avatar avatar-sm flex-shrink-0 me-3">
            <span class="avatar-initial rounded-circle bg-label-success">
                <i class="bx bx-check"></i>
            </span>
        </div>
        <div class="d-flex flex-column w-100">
            <div class="d-flex justify-content-between mb-1">
                <span>Finished &nbsp;&nbsp;</span>
                <span class="text-muted">
                    @php
                        echo $project->structure_design_upload_date;
                    @endphp
                </span>
            </div>
            <div class="progress" style="height:6px;">
                <div class="progress-bar bg-success" style="width: 100%" role="progressbar" aria-valuenow="100"
                    aria-valuemin="100" aria-valuemax="100"></div>
            </div>
            <div class="d-flex justify-content-between mb-1">

                <span>
                    <a href="{{ route('structuredesign.show', $project->id) }}">
                        View File
                    </a>
                </span>

                <span>
                    <a href="{{ route('structuredesigncreate.create', ['id' => $project->id]) }}">
                        Upload
                        <i class="bx bx-upload"></i>
                    </a>
                </span>
            </div>
        </div>
    </li>
@else
    @if ($quotationProposalStatus == 'after')
        <li class="d-flex mb-2">
            <div class="avatar avatar-sm flex-shrink-0 me-3">
                <span class="avatar-initial rounded-circle bg-label-danger">
                    <i class="bx bx-x"></i>
                </span>
            </div>
            <div class="d-flex flex-column w-100">
                <div class="d-flex justify-content-between mb-1">
                    <span>Expired</span>
                    <span class="text-muted" hidden>
                        @php
                            echo $ednDateArr[0];
                        @endphp
                    </span>
                </div>
                <div class="progress" style="height:6px;">
                    <div class="progress-bar bg-danger" style="width: 100%" role="progressbar" aria-valuenow="100"
                        aria-valuemin="100" aria-valuemax="100"></div>
                </div>
                <div class="d-flex justify-content-end mb-1">
                    <span>
                        <a href="{{ route('structuredesigncreate.create', ['id' => $project->id]) }}">
                            Upload
                            <i class="bx bx-upload"></i>
                        </a>
                    </span>
                </div>
            </div>
        </li>
    @elseif($quotationProposalStatus == 'before')
        <li class="d-flex mb-2">
            <div class="avatar avatar-sm flex-shrink-0 me-3">
                <span class="avatar-initial rounded-circle bg-label-danger"><i class="bx bx-play"></i></span>
            </div>
            <div class="d-flex flex-column w-100">
                <div class="d-flex justify-content-between mb-1">
                    <span>No &nbsp;&nbsp;</span>
                    <span class="text-muted" hidden>
                        @php
                            echo $ednDateArr[0];
                        @endphp
                    </span>
                </div>
                <div class="progress" style="height:6px;">
                    <div class="progress-bar bg-danger" style="width: 100%" role="progressbar" aria-valuenow="100"
                        aria-valuemin="100" aria-valuemax="100"></div>
                </div>
                <div class="d-flex justify-content-end mb-1">
                    <span>
                        <a href="{{ route('structuredesigncreate.create', ['id' => $project->id]) }}">
                            Upload
                            <i class="bx bx-upload"></i>
                        </a>
                    </span>
                </div>
            </div>
        </li>
    @endif
@endif
