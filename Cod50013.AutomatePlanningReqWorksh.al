codeunit 50013 "Automate Planning Req. Worksh."
{
    // version AMC-123

    TableNo = "Job Queue Entry";

    trigger OnRun();
    begin

        ManufacturingSetup.GET;

        StartDate := TODAY;
        EndDate := CALCDATE('1Y',StartDate);
        if (FORMAT(ManufacturingSetup."Exclude Forecast Before Plan.") <> '') then
          ExcForBeforePlanDate := CALCDATE(ManufacturingSetup."Exclude Forecast Before Plan.",StartDate);

        if ("Parameter String" = 'PLANWORKSHEET') then begin
          //ManufacturingSetup.TESTFIELD("Replenishment System");
          ManufacturingSetup.TESTFIELD("Location Filter Plan.");
          RunPlanWorksheet;
        end;

        if ("Parameter String" = 'REQWORKSHEET') then begin
          ManufacturingSetup.TESTFIELD("Location Filter Req.");
          RunReqWorksheet;
        end;
    end;

    var
        ManufacturingSetup : Record "Manufacturing Setup";
        StartDate : Date;
        EndDate : Date;
        ExcForBeforePlanDate : Date;

    local procedure RunPlanWorksheet();
    var
        CalculatePlanWksh : Report "Calculate Plan - Plan. Wksh.";
    begin
        CalculatePlanWksh.USEREQUESTPAGE(false);
        CalculatePlanWksh.SetTemplAndWorksheet('PLANNING','DEFAULT',true);

        CalculatePlanWksh.SetParameters(ManufacturingSetup.MPS,
                                          ManufacturingSetup.MRP,
                                            StartDate,
                                              EndDate,
                                                false,
                                                  ManufacturingSetup."Use Forecast Plan.",
                                                    ExcForBeforePlanDate,
                                                      ManufacturingSetup."Resp. Plan. Par. Excep. Warn.",
                                                        ManufacturingSetup."Blocked Plan.",
                                                          ManufacturingSetup."Replenishment System",
                                                            ManufacturingSetup."Location Filter Plan.");
        CalculatePlanWksh.RUN;
    end;

    local procedure RunReqWorksheet();
    var
        CalculatePlanReqWksh : Report "Calculate Plan - Req. Wksh.";
    begin

        CalculatePlanReqWksh.USEREQUESTPAGE(false);

        CalculatePlanReqWksh.SetTemplAndWorksheet('REQ','DEFAULT');
        CalculatePlanReqWksh.SetParameters(StartDate,
                                            EndDate,
                                              ManufacturingSetup."Use Forecast Req.",
                                                ExcForBeforePlanDate,
                                                  ManufacturingSetup."Resp. Plan. Par. Excep. Warn.",
                                                    ManufacturingSetup."Blocked Plan.",
                                                      ManufacturingSetup."Location Filter Plan.");
        CalculatePlanReqWksh.RUN;
    end;
}

