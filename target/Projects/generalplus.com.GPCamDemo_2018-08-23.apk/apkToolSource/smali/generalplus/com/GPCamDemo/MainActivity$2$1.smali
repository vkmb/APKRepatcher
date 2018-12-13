.class Lgeneralplus/com/GPCamDemo/MainActivity$2$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgeneralplus/com/GPCamDemo/MainActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lgeneralplus/com/GPCamDemo/MainActivity$2;


# direct methods
.method constructor <init>(Lgeneralplus/com/GPCamDemo/MainActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lgeneralplus/com/GPCamDemo/MainActivity$2;

    .prologue
    .line 133
    iput-object p1, p0, Lgeneralplus/com/GPCamDemo/MainActivity$2$1;->this$1:Lgeneralplus/com/GPCamDemo/MainActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 136
    if-nez p2, :cond_0

    .line 137
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainActivity$2$1;->this$1:Lgeneralplus/com/GPCamDemo/MainActivity$2;

    iget-object v0, v0, Lgeneralplus/com/GPCamDemo/MainActivity$2;->this$0:Lgeneralplus/com/GPCamDemo/MainActivity;

    # invokes: Lgeneralplus/com/GPCamDemo/MainActivity;->showSetTimeDialog()V
    invoke-static {v0}, Lgeneralplus/com/GPCamDemo/MainActivity;->access$300(Lgeneralplus/com/GPCamDemo/MainActivity;)V

    .line 142
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 143
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/MainActivity$2$1;->this$1:Lgeneralplus/com/GPCamDemo/MainActivity$2;

    iget-object v0, v0, Lgeneralplus/com/GPCamDemo/MainActivity$2;->this$0:Lgeneralplus/com/GPCamDemo/MainActivity;

    # invokes: Lgeneralplus/com/GPCamDemo/MainActivity;->showSaveLogDialog()V
    invoke-static {v0}, Lgeneralplus/com/GPCamDemo/MainActivity;->access$400(Lgeneralplus/com/GPCamDemo/MainActivity;)V

    goto :goto_0
.end method
