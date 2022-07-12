page 50100 "EVO VOB Table"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "EVO VOB Table";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("EVO Code"; Rec."EVO Code")
                {
                    ApplicationArea = All;
                }
                field("EVO Description"; Rec."EVO Description")
                {
                    ApplicationArea = All;
                }
                field("EVO Search Description"; Rec."EVO Search Description")
                {
                    ApplicationArea = All;
                }
                field("EVO Customer No."; Rec."EVO Customer No.")
                {
                    ApplicationArea = All;
                }
            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(SayHello)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin
                    Rec.EVO_ShowMessage('Hello');
                end;
            }
        }
    }

    trigger OnAfterGetCurrRecord()
    begin
        Rec.EVO_ShowMessage('OnAfterGetCurrRecord');
    end;

    trigger OnAfterGetRecord()
    begin
        Rec.EVO_ShowMessage('OnAfterGetRecord');
    end;
}