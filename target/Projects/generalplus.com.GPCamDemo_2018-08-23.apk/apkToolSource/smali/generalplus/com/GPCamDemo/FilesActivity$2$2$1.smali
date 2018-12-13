.class Lgeneralplus/com/GPCamDemo/FilesActivity$2$2$1;
.super Ljava/lang/Object;
.source "FilesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 259
    iput-object p1, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2$1;->this$2:Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 262
    const/4 v0, 0x0

    # setter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->bIsStopUpdateThumbnail:Z
    invoke-static {v0}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$1602(Z)Z

    .line 264
    return-void
.end method
