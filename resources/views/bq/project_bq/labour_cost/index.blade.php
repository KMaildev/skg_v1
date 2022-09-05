<div class="card-body">
    <span style="color: green; font-weight: bold;">
        Labour Cost
    </span>

    <div class="col-md-6 py-2">
        <span class="text-info">
            Upload Excel File
        </span>
        <form action="{{ route('labour_costs_import') }}" method="POST" autocomplete="off" id="create-form" role="form"
            enctype="multipart/form-data">
            @csrf
            <div class="input-group">
                <input class="form-control @error('labour_cost_excel') is-invalid @enderror" type="file"
                    name="labour_cost_excel" multiple value="{{ old('labour_cost_excel') }}" required />
                @error('labour_cost_excel')
                    <div class="invalid-feedback"> {{ $message }} </div>
                @enderror
                <button class="btn btn-outline-primary" type="submit" id="inputGroupFileAddon04">Upload</button>
            </div>
        </form>
        <a class="text-danger">
            Project Id = {{ $project->id }}
        </a>
        /
        <a class="text-success" href="{{ asset('public/simple_labour_cost.xlsx') }}" download="">
            Simple File Download
        </a>
    </div>

    <table class="table table-bordered table-sm">
        <thead class="tbbg">
            <tr>
                <th style="color: white; text-align: center; width: 1%;">
                    Sr
                </th>
                <th style="color: white; text-align: center; width: 20%;">
                    Particular
                </th>
                <th style="color: white; text-align: center; width: 7%;">
                    Unit
                </th>
                <th style="color: white; text-align: center; width: 10%;">
                    Quantity
                </th>
                <th style="color: white; text-align: center; width: 20%;">
                    Rate (Kyats)
                </th>
                <th style="color: white; text-align: center; width: 20%;">
                    Per
                </th>
                <th style="color: white; text-align: center; width: 20%;">
                    Amount
                </th>
            </tr>
        </thead>
        <tbody>
            @php
                $total_labour_cost_amount = [];
            @endphp
            @foreach ($labour_costs as $key => $labour_cost)
                <tr>
                    <td>
                        {{ $key + 1 }}
                    </td>
                    <td>
                        {{ $labour_cost->particular ?? '' }}
                    </td>
                    <td>
                        {{ $labour_cost->unit ?? '' }}
                    </td>
                    <td style="text-align: right; font-weight: bold;">
                        @php
                            $labour_cost_qty = $labour_cost->quantity ?? 0;
                            echo $labour_cost_qty;
                        @endphp
                    </td>
                    <td style="text-align: right; font-weight: bold;">
                        @php
                            $labour_cost_rate = $labour_cost->rate ?? 0;
                            echo number_format($labour_cost_rate, 2);
                        @endphp
                    </td>
                    <td>
                        {{ $labour_cost->per ?? '' }}
                    </td>
                    <td style="text-align: right; font-weight: bold;">
                        @php
                            $labour_cost_amount = $labour_cost_qty * $labour_cost_rate;
                            echo number_format($labour_cost_amount, 2);
                            $total_labour_cost_amount[] = $labour_cost_amount;
                        @endphp
                    </td>
                </tr>
            @endforeach
        </tbody>
        <tr>
            <td colspan="6">
                Total
            </td>
            <td style="text-align: right; font-weight: bold;">
                @php
                    $labour_cost_amount_total = array_sum($total_labour_cost_amount);
                    echo number_format($labour_cost_amount_total, 2);
                @endphp
            </td>
        </tr>
    </table>
</div>
