.class public Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;
.super Ljava/lang/Object;
.source "GPXMLParse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgeneralplus/com/GPCamLib/GPXMLParse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GPXMLCategory"
.end annotation


# instance fields
.field public aryListGPXMLSettings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;",
            ">;"
        }
    .end annotation
.end field

.field public i32TreeLevel:I

.field public strXMLCategoryName:Ljava/lang/String;

.field final synthetic this$0:Lgeneralplus/com/GPCamLib/GPXMLParse;


# direct methods
.method public constructor <init>(Lgeneralplus/com/GPCamLib/GPXMLParse;Ljava/lang/String;ILjava/util/ArrayList;)V
    .locals 1
    .param p1, "this$0"    # Lgeneralplus/com/GPCamLib/GPXMLParse;
    .param p2, "CategoryName"    # Ljava/lang/String;
    .param p3, "TreeLevel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p4, "XMLSetting":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLSetting;>;"
    iput-object p1, p0, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;->this$0:Lgeneralplus/com/GPCamLib/GPXMLParse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p2, p0, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;->strXMLCategoryName:Ljava/lang/String;

    .line 103
    iget v0, p0, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;->i32TreeLevel:I

    iput v0, p0, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;->i32TreeLevel:I

    .line 105
    invoke-virtual {p4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLCategory;->aryListGPXMLSettings:Ljava/util/ArrayList;

    .line 106
    return-void
.end method
