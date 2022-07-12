table 50100 "EVO VOB Table"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "EVO Code"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Code';
        }
        field(2; "EVO Description"; Text[100])
        {
            DataClassification = CustomerContent;
            InitValue = 'Description';
        }
        field(3; "EVO Search Description"; Text[50])
        {
            DataClassification = CustomerContent;
        }
        field(4; "EVO Customer No."; Code[20])
        {
            DataClassification = CustomerContent;
            TableRelation = Customer;
        }

    }

    keys
    {
        key(Key1; "EVO Code")
        {
            Clustered = true;
        }
        key(Key2; "EVO Search Description")
        {
        }
    }

    trigger OnInsert()
    begin
        EVO_ShowMessage('OnInsert');
    end;

    trigger OnModify()
    begin
        EVO_ShowMessage('OnModify');
    end;

    trigger OnDelete()
    begin
        EVO_ShowMessage('OnDelete');
    end;

    trigger OnRename()
    begin
        EVO_ShowMessage('OnRename');
    end;

    procedure EVO_ShowMessage(UserMessage1: Text)
    var
        Customer: Record Customer;
    begin
        Message(UserMessage1);
    end;

}