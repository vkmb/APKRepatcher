.class Lgeneralplus/com/GPCamDemo/FilesActivity$3;
.super Ljava/lang/Object;
.source "FilesActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgeneralplus/com/GPCamDemo/FilesActivity;->UpdateGridView()V
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
    .line 478
    iput-object p1, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$3;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    .line 482
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$3;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->m_saImageItems:Landroid/widget/SimpleAdapter;
    invoke-static {v0}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$2700(Lgeneralplus/com/GPCamDemo/FilesActivity;)Landroid/widget/SimpleAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 483
    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->listImageItem:Ljava/util/ArrayList;
    invoke-static {}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$600()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 494
    :goto_0
    return-void

    .line 486
    :cond_0
    iget-object v6, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$3;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$3;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->m_Context:Landroid/content/Context;
    invoke-static {v1}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$1100(Lgeneralplus/com/GPCamDemo/FilesActivity;)Landroid/content/Context;

    move-result-object v1

    .line 487
    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->listImageItem:Ljava/util/ArrayList;
    invoke-static {}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$600()Ljava/util/ArrayList;

    move-result-object v2

    const v3, 0x7f09001d

    new-array v4, v8, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "ThumbnailFilePath"

    aput-object v7, v4, v5

    const/4 v5, 0x1

    const-string v7, "FileName"

    aput-object v7, v4, v5

    new-array v5, v8, [I

    fill-array-data v5, :array_0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 486
    # setter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->m_saImageItems:Landroid/widget/SimpleAdapter;
    invoke-static {v6, v0}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$2702(Lgeneralplus/com/GPCamDemo/FilesActivity;Landroid/widget/SimpleAdapter;)Landroid/widget/SimpleAdapter;

    .line 491
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$3;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->m_Gridview:Landroid/widget/GridView;
    invoke-static {v0}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$300(Lgeneralplus/com/GPCamDemo/FilesActivity;)Landroid/widget/GridView;

    move-result-object v0

    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$3;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->m_saImageItems:Landroid/widget/SimpleAdapter;
    invoke-static {v1}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$2700(Lgeneralplus/com/GPCamDemo/FilesActivity;)Landroid/widget/SimpleAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 493
    :cond_1
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$3;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->m_saImageItems:Landroid/widget/SimpleAdapter;
    invoke-static {v0}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$2700(Lgeneralplus/com/GPCamDemo/FilesActivity;)Landroid/widget/SimpleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 487
    nop

    :array_0
    .array-data 4
        0x7f07002c
        0x7f070063
    .end array-data
.end method
