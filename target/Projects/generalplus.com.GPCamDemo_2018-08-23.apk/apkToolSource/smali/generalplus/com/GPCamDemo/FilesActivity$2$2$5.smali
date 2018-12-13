.class Lgeneralplus/com/GPCamDemo/FilesActivity$2$2$5;
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
    .line 382
    iput-object p1, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2$5;->this$2:Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;

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
    .line 385
    if-nez p2, :cond_0

    .line 386
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1    # "dialog":Landroid/content/DialogInterface;
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 388
    :cond_0
    return-void
.end method
