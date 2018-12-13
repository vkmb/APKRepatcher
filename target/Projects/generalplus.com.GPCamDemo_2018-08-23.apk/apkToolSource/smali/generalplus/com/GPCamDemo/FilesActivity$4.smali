.class Lgeneralplus/com/GPCamDemo/FilesActivity$4;
.super Ljava/lang/Object;
.source "FilesActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgeneralplus/com/GPCamDemo/FilesActivity;->IsDownloading()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;


# direct methods
.method constructor <init>(Lgeneralplus/com/GPCamDemo/FilesActivity;)V
    .locals 0
    .param p1, "this$0"    # Lgeneralplus/com/GPCamDemo/FilesActivity;

    .prologue
    .line 676
    iput-object p1, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$4;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 679
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$4;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->m_Context:Landroid/content/Context;
    invoke-static {v0}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$1100(Lgeneralplus/com/GPCamDemo/FilesActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$4;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    invoke-virtual {v1}, Lgeneralplus/com/GPCamDemo/FilesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 680
    return-void
.end method
