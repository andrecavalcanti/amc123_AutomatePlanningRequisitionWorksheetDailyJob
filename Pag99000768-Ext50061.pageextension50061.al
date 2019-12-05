pageextension 50061 "pageextension50061" extends "Manufacturing Setup" //99000768
{
    // version NAVW111.00,AMC-123

    layout
    {
        addafter(Planning)
        {
            group("Planning Worksheet")
            {
                Caption = 'Planning Worksheet';
                field(MPS;MPS)
                {
                }
                field(MRP;MRP)
                {
                }
                field("Use Forecast Plan.";"Use Forecast Plan.")
                {
                }
                field("Resp. Plan. Par. Excep. Warn.";"Resp. Plan. Par. Excep. Warn.")
                {
                }
                field("Blocked Plan.";"Blocked Plan.")
                {
                }
                field("Replenishment System";"Replenishment System")
                {
                }
                field("Location Filter Plan.";"Location Filter Plan.")
                {
                }
                field("Exclude Forecast Before Plan.";"Exclude Forecast Before Plan.")
                {
                }
            }
            group("Requisition Worksheet")
            {
                Caption = 'Requisition Worksheet';
                field("Use Forecast Req.";"Use Forecast Req.")
                {
                }
                field("Rsp. Par. Sup. Trig. Safe Stk.";"Rsp. Par. Sup. Trig. Safe Stk.")
                {
                }
                field("Blocked Req.";"Blocked Req.")
                {
                }
                field("Location Filter Req.";"Location Filter Req.")
                {
                }
                field("Exclude Forecast Before Req.";"Exclude Forecast Before Req.")
                {
                }
            }
        }
    }

    

}

