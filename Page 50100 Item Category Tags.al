page 50104 "Item Category Tags"
{
    Caption = 'Item Category Tags';
    PageType = List;
    SourceTable = "Item Category Tag";

    layout
    {
        area(Content)
        {
            repeater(Tags)
            {
                field(Tag; Tag)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}