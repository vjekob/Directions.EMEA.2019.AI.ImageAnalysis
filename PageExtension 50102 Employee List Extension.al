pageextension 50108 "Employee Card Extension" extends "Employee Card"
{
    actions
    {
        addlast("E&mployee")
        {
            action(ImageAnalysis)
            {
                Caption = 'Validate Picture';
                Image = Picture;
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                PromotedOnly = true;

                trigger OnAction();
                var
                    Test: codeunit "Image Analysis Client";
                begin
                    Test.AnalyzeEmployeePhoto(Rec);
                end;
            }
        }
    }
}