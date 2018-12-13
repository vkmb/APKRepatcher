.class Lgeneralplus/com/GPCamDemo/FWUpgradeActivity$2;
.super Ljava/lang/Object;
.source "FWUpgradeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->UpgradeComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;


# direct methods
.method constructor <init>(Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;

    .prologue
    .line 151
    iput-object p1, p0, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity$2;->this$0:Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    const/4 v3, 0x1

    .line 153
    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity$2;->this$0:Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;

    # setter for: Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->m_bExit:Z
    invoke-static {v1, v3}, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->access$102(Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;Z)Z

    .line 154
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity$2;->this$0:Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;

    invoke-virtual {v1}, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lgeneralplus/com/GPCamDemo/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 155
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 156
    const-string v1, "EXIT"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 157
    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity$2;->this$0:Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;

    invoke-virtual {v1, v0}, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->startActivity(Landroid/content/Intent;)V

    .line 159
    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity$2;->this$0:Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;

    invoke-virtual {v1}, Lgeneralplus/com/GPCamDemo/FWUpgradeActivity;->finish()V

    .line 160
    return-void
.end method
