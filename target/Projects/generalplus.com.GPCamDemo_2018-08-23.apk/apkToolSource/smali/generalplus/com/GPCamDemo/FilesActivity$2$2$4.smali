.class Lgeneralplus/com/GPCamDemo/FilesActivity$2$2$4;
.super Ljava/lang/Object;
.source "FilesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;


# direct methods
.method constructor <init>(Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;)V
    .locals 0
    .param p1, "this$2"    # Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;

    .prologue
    .line 370
    iput-object p1, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2$4;->this$2:Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I
    .param p3, "isChecked"    # Z

    .prologue
    const/4 v1, 0x1

    .line 373
    if-ne v1, p2, :cond_0

    .line 374
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1    # "dialog":Landroid/content/DialogInterface;
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p2, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 375
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2$4;->this$2:Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;

    iget-object v0, v0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->this$1:Lgeneralplus/com/GPCamDemo/FilesActivity$2;

    iget-object v0, v0, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->m_bCheckboxArray:[Z
    invoke-static {v0}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$2400(Lgeneralplus/com/GPCamDemo/FilesActivity;)[Z

    move-result-object v0

    aput-boolean v1, v0, p2

    .line 377
    :cond_0
    return-void
.end method
