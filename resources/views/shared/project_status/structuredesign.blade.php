<li class="d-flex mb-2">
    <div class="avatar avatar-sm flex-shrink-0 me-3">
        <span class="avatar-initial rounded-circle bg-label-primary"><i class="bx bx-play"></i></span>
    </div>
    <div class="d-flex flex-column w-100">
        <div class="d-flex justify-content-between mb-1">
            <span>In Progress &nbsp;&nbsp;</span>
            <span class="text-muted"><?php echo $data[0]; ?></span>
        </div>
        <div class="progress" style="height: 6px;">
            <div class="progress-bar bg-primary" style="width: 100%" role="progressbar" aria-valuenow="100"
                aria-valuemin="100" aria-valuemax="100"></div>
        </div>
        <div class="d-flex justify-content-end mb-1">
            <span>
                <a href="{{ route('structuredesigncreate.create', ['id' => $project_id]) }}">
                    Upload
                    <i class="bx bx-upload"></i>
                </a>
            </span>
        </div>
    </div>
</li>
