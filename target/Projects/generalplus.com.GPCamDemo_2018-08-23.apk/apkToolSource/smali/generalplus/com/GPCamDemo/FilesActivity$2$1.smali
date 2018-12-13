.class Lgeneralplus/com/GPCamDemo/FilesActivity$2$1;
.super Ljava/lang/Object;
.source "FilesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgeneralplus/com/GPCamDemo/FilesActivity$2;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lgeneralplus/com/GPCamDemo/FilesActivity$2;


# direct methods
.method constructor <init>(Lgeneralplus/com/GPCamDemo/FilesActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lgeneralplus/com/GPCamDemo/FilesActivity$2;

    .prologue
    .line 222
    iput-object p1, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$1;->this$1:Lgeneralplus/com/GPCamDemo/FilesActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 226
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 227
    return-void
.end method
