.class Lgeneralplus/com/GPCamDemo/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgeneralplus/com/GPCamDemo/MainActivity;->showSetTimeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lgeneralplus/com/GPCamDemo/MainActivity;


# direct methods
.method constructor <init>(Lgeneralplus/com/GPCamDemo/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lgeneralplus/com/GPCamDemo/MainActivity;

    .prologue
    .line 192
    iput-object p1, p0, Lgeneralplus/com/GPCamDemo/MainActivity$4;->this$0:Lgeneralplus/com/GPCamDemo/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 194
    iget-object v2, p0, Lgeneralplus/com/GPCamDemo/MainActivity$4;->this$0:Lgeneralplus/com/GPCamDemo/MainActivity;

    # getter for: Lgeneralplus/com/GPCamDemo/MainActivity;->m_iSetTime:I
    invoke-static {v2}, Lgeneralplus/com/GPCamDemo/MainActivity;->access$500(Lgeneralplus/com/GPCamDemo/MainActivity;)I

    move-result v2

    if-eq v2, p2, :cond_0

    .line 195
    iget-object v2, p0, Lgeneralplus/com/GPCamDemo/MainActivity$4;->this$0:Lgeneralplus/com/GPCamDemo/MainActivity;

    const-string v3, "Data"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lgeneralplus/com/GPCamDemo/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 196
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 197
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "SetTime"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 198
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 199
    iget-object v2, p0, Lgeneralplus/com/GPCamDemo/MainActivity$4;->this$0:Lgeneralplus/com/GPCamDemo/MainActivity;

    # setter for: Lgeneralplus/com/GPCamDemo/MainActivity;->m_iSetTime:I
    invoke-static {v2, p2}, Lgeneralplus/com/GPCamDemo/MainActivity;->access$502(Lgeneralplus/com/GPCamDemo/MainActivity;I)I

    .line 202
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 203
    return-void
.end method
