.class public Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLValue;
.super Ljava/lang/Object;
.source "GPXMLParse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgeneralplus/com/GPCamLib/GPXMLParse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GPXMLValue"
.end annotation


# instance fields
.field public i32TreeLevel:I

.field public strXMLValueID:Ljava/lang/String;

.field public strXMLValueName:Ljava/lang/String;

.field final synthetic this$0:Lgeneralplus/com/GPCamLib/GPXMLParse;


# direct methods
.method public constructor <init>(Lgeneralplus/com/GPCamLib/GPXMLParse;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lgeneralplus/com/GPCamLib/GPXMLParse;
    .param p2, "ValueName"    # Ljava/lang/String;
    .param p3, "ValueID"    # Ljava/lang/String;
    .param p4, "TreeLevel"    # I

    .prologue
    .line 56
    iput-object p1, p0, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLValue;->this$0:Lgeneralplus/com/GPCamLib/GPXMLParse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p2, p0, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLValue;->strXMLValueName:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLValue;->strXMLValueID:Ljava/lang/String;

    .line 59
    iput p4, p0, Lgeneralplus/com/GPCamLib/GPXMLParse$GPXMLValue;->i32TreeLevel:I

    .line 60
    return-void
.end method
