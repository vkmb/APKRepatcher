.class Lgeneralplus/com/GPCamDemo/FilesActivity$1;
.super Ljava/lang/Object;
.source "FilesActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgeneralplus/com/GPCamDemo/FilesActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 138
    iput-object p1, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$1;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 165
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$1;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    # setter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->_firstVisibleItem:I
    invoke-static {v0, p2}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$202(Lgeneralplus/com/GPCamDemo/FilesActivity;I)I

    .line 167
    const-string v0, "tag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScroll = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 143
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$1;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    # setter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->_scrollState:I
    invoke-static {v0, p2}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$002(Lgeneralplus/com/GPCamDemo/FilesActivity;I)I

    .line 144
    if-nez p2, :cond_0

    .line 145
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$1;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->_i32SelectedFirstItem:I
    invoke-static {v0}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$100(Lgeneralplus/com/GPCamDemo/FilesActivity;)I

    move-result v0

    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$1;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->_firstVisibleItem:I
    invoke-static {v1}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$200(Lgeneralplus/com/GPCamDemo/FilesActivity;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$1;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$1;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->_firstVisibleItem:I
    invoke-static {v1}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$200(Lgeneralplus/com/GPCamDemo/FilesActivity;)I

    move-result v1

    # setter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->_i32SelectedFirstItem:I
    invoke-static {v0, v1}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$102(Lgeneralplus/com/GPCamDemo/FilesActivity;I)I

    .line 149
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$1;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->m_Gridview:Landroid/widget/GridView;
    invoke-static {v0}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$300(Lgeneralplus/com/GPCamDemo/FilesActivity;)Landroid/widget/GridView;

    move-result-object v0

    iget-object v1, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$1;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->_i32SelectedFirstItem:I
    invoke-static {v1}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$100(Lgeneralplus/com/GPCamDemo/FilesActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelection(I)V

    .line 150
    const/4 v0, 0x0

    # setter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->m_bRunCreateGridViewDone:Z
    invoke-static {v0}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$402(Z)Z

    .line 151
    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->m_UpdateThumbnailThread:Ljava/lang/Thread;
    invoke-static {}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$500()Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 152
    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->m_UpdateThumbnailThread:Ljava/lang/Thread;
    invoke-static {}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$500()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 153
    const/4 v0, 0x0

    # setter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->m_UpdateThumbnailThread:Ljava/lang/Thread;
    invoke-static {v0}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$502(Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 155
    :cond_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lgeneralplus/com/GPCamDemo/FilesActivity$UpdateThumbnailRunnable;

    iget-object v2, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$1;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    invoke-direct {v1, v2}, Lgeneralplus/com/GPCamDemo/FilesActivity$UpdateThumbnailRunnable;-><init>(Lgeneralplus/com/GPCamDemo/FilesActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    # setter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->m_UpdateThumbnailThread:Ljava/lang/Thread;
    invoke-static {v0}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$502(Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 157
    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->m_UpdateThumbnailThread:Ljava/lang/Thread;
    invoke-static {}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$500()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
