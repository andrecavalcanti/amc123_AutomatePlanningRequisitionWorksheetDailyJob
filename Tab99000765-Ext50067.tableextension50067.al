tableextension 50067 "tableextension50067" extends "Manufacturing Setup" //99000765
{
    // version NAVW111.00,AMC-123

    fields
    {
        field(50000;MPS;Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(50001;MRP;Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(50002;"Use Forecast Plan.";Code[10])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Production Forecast Name";
        }
        field(50003;"Resp. Plan. Par. Excep. Warn.";Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(50004;"Blocked Plan.";Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(50005;"Replenishment System";Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(50006;"Location Filter Plan.";Code[10])
        {
            DataClassification = ToBeClassified;
            TableRelation = Location;
        }
        field(50007;"Exclude Forecast Before Plan.";DateFormula)
        {
            DataClassification = ToBeClassified;
        }
        field(50008;"Use Forecast Req.";Code[10])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Production Forecast Name";
        }
        field(50009;"Rsp. Par. Sup. Trig. Safe Stk.";Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(50010;"Blocked Req.";Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(50011;"Location Filter Req.";Code[10])
        {
            DataClassification = ToBeClassified;
            TableRelation = Location;
        }
        field(50012;"Exclude Forecast Before Req.";DateFormula)
        {
            DataClassification = ToBeClassified;
        }
    }    

}

