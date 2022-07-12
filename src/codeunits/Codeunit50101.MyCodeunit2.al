codeunit 50101 MyCodeunit2
{
    trigger OnRun()
    var
        MyCodeunit: Codeunit MyCodeunit;
        SalesHeader: Record "Sales Header";
        SalesPost: Codeunit "Sales-Post";
    begin
        SalesPost.Run(SalesHeader);
    end;
}