.class Lgeneralplus/com/GPCamDemo/FilesActivity$UpdateThumbnailRunnable;
.super Ljava/lang/Object;
.source "FilesActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgeneralplus/com/GPCamDemo/FilesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateThumbnailRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;


# direct methods
.method constructor <init>(Lgeneralplus/com/GPCamDemo/FilesActivity;)V
    .locals 3
    .param p1, "this$0"    # Lgeneralplus/com/GPCamDemo/FilesActivity;

    .prologue
    const/4 v2, 0x0

    .line 536
    iput-object p1, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$UpdateThumbnailRunnable;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 538
    const-string v0, "FilesActivity"

    const-string v1, "Create UpdateThumbnailRunnable ... "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->m_UpdateGridVierThread:Ljava/lang/Thread;
    invoke-static {}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$3000()Ljava/lang/Thread;

    move-result-object v0

    if-nez v0, :cond_0

    .line 540
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lgeneralplus/com/GPCamDemo/FilesActivity$UpdateGridViewRunnable;

    invoke-direct {v1, p1}, Lgeneralplus/com/GPCamDemo/FilesActivity$UpdateGridViewRunnable;-><init>(Lgeneralplus/com/GPCamDemo/FilesActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    # setter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->m_UpdateGridVierThread:Ljava/lang/Thread;
    invoke-static {v0}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$3002(Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 542
    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->m_UpdateGridVierThread:Ljava/lang/Thread;
    invoke-static {}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$3000()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 544
    :cond_0
    # setter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->bIsStopUpdateThumbnail:Z
    invoke-static {v2}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$1602(Z)Z

    .line 545
    # setter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->m_bPendingGetThumbnail:Z
    invoke-static {v2}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$1902(Z)Z

    .line 546
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/16 v9, 0xa2

    const/4 v8, -0x1

    .line 552
    :cond_0
    :goto_0
    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->m_bRunCreateGridViewDone:Z
    invoke-static {}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$400()Z

    move-result v4

    if-nez v4, :cond_c

    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->bIsStopUpdateThumbnail:Z
    invoke-static {}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$1600()Z

    move-result v4

    if-nez v4, :cond_c

    .line 554
    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->m_bPendingGetThumbnail:Z
    invoke-static {}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$1900()Z

    move-result v4

    if-nez v4, :cond_0

    .line 559
    const-wide/16 v4, 0x32

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 566
    :goto_1
    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->listImageItem:Ljava/util/ArrayList;
    invoke-static {}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$600()Ljava/util/ArrayList;

    move-result-object v5

    monitor-enter v5

    .line 567
    const/4 v4, 0x0

    :try_start_1
    # setter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->m_bRunCreateGridViewDone:Z
    invoke-static {v4}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$402(Z)Z

    .line 568
    const/4 v2, 0x0

    .line 569
    .local v2, "index":I
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v4

    invoke-virtual {v4}, Lgeneralplus/com/GPCamLib/CamWrapper;->getIsNewFile()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 570
    iget-object v4, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$UpdateThumbnailRunnable;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->_i32SelectedFirstItem:I
    invoke-static {v4}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$100(Lgeneralplus/com/GPCamDemo/FilesActivity;)I

    move-result v4

    if-eq v8, v4, :cond_1

    .line 571
    iget-object v4, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$UpdateThumbnailRunnable;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->_i32SelectedFirstItem:I
    invoke-static {v4}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$100(Lgeneralplus/com/GPCamDemo/FilesActivity;)I

    move-result v2

    .line 574
    :cond_1
    move v1, v2

    .local v1, "i":I
    :goto_2
    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->listImageItem:Ljava/util/ArrayList;
    invoke-static {}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$600()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 576
    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->listImageItem:Ljava/util/ArrayList;
    invoke-static {}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$600()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 577
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "FileStatus"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    if-nez v4, :cond_3

    .line 574
    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 560
    .end local v1    # "i":I
    .end local v2    # "index":I
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_0
    move-exception v0

    .line 562
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 580
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "i":I
    .restart local v2    # "index":I
    .restart local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    :try_start_2
    const-string v4, "FileStatus"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v6, 0xa1

    if-eq v4, v6, :cond_4

    const-string v4, "FileStatus"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v6, 0xa0

    if-ne v4, v6, :cond_7

    .line 582
    :cond_4
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v4

    invoke-virtual {v4}, Lgeneralplus/com/GPCamLib/CamWrapper;->getIsNewFile()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 583
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v4

    invoke-virtual {v4, v1}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamGetFileIndex(I)I

    move-result v4

    if-ne v8, v4, :cond_5

    .line 584
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v4

    invoke-virtual {v4, v1}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamSetNextPlaybackFileListIndex(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 586
    const-wide/16 v6, 0x7d0

    :try_start_3
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 594
    :cond_5
    :goto_4
    :try_start_4
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v4

    .line 595
    invoke-virtual {v4, v1}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamSendGetFileThumbnail(I)I

    .line 597
    # setter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->_i32GettingThumbnailFileIndex:I
    invoke-static {v1}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$3102(I)I

    .line 598
    const-string v4, "FileStatus"

    const/16 v6, 0xa2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->listImageItem:Ljava/util/ArrayList;
    invoke-static {}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$600()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 600
    const-string v4, "FilesActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "i = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", FileTag_FileGettingThumbnail..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_6
    :goto_5
    monitor-exit v5

    goto/16 :goto_0

    .end local v1    # "i":I
    .end local v2    # "index":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 587
    .restart local v1    # "i":I
    .restart local v2    # "index":I
    .restart local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_1
    move-exception v0

    .line 589
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4

    .line 603
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_7
    const-string v4, "FileStatus"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v9, :cond_a

    .line 605
    iget-object v4, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$UpdateThumbnailRunnable;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    # operator++ for: Lgeneralplus/com/GPCamDemo/FilesActivity;->_i32WaitGettingThumbnailCount:I
    invoke-static {v4}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$3208(Lgeneralplus/com/GPCamDemo/FilesActivity;)I

    .line 606
    iget-object v4, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$UpdateThumbnailRunnable;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->_i32WaitGettingThumbnailCount:I
    invoke-static {v4}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$3200(Lgeneralplus/com/GPCamDemo/FilesActivity;)I

    move-result v4

    const/16 v6, 0x64

    if-le v4, v6, :cond_9

    .line 608
    iget-object v4, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$UpdateThumbnailRunnable;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    const/4 v6, 0x0

    # setter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->_i32WaitGettingThumbnailCount:I
    invoke-static {v4, v6}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$3202(Lgeneralplus/com/GPCamDemo/FilesActivity;I)I

    .line 609
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v4

    invoke-virtual {v4}, Lgeneralplus/com/GPCamLib/CamWrapper;->getIsNewFile()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 610
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v4

    invoke-virtual {v4, v1}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamGetFileIndex(I)I

    move-result v4

    if-ne v8, v4, :cond_8

    .line 611
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v4

    invoke-virtual {v4, v1}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamSetNextPlaybackFileListIndex(I)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 613
    const-wide/16 v6, 0x7d0

    :try_start_6
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 621
    :cond_8
    :goto_6
    :try_start_7
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v4

    invoke-virtual {v4, v1}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamSendGetFileThumbnail(I)I

    .line 623
    const-string v4, "FileStatus"

    const/16 v6, 0xa2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->listImageItem:Ljava/util/ArrayList;
    invoke-static {}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$600()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 626
    :cond_9
    # setter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->_i32GettingThumbnailFileIndex:I
    invoke-static {v1}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$3102(I)I

    goto :goto_5

    .line 614
    :catch_2
    move-exception v0

    .line 616
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_6

    .line 629
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_a
    const-string v4, "FileStatus"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v6, 0xa3

    if-ne v4, v6, :cond_b

    .line 631
    iget-object v4, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$UpdateThumbnailRunnable;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    const/4 v6, 0x0

    # setter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->_i32WaitGettingThumbnailCount:I
    invoke-static {v4, v6}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$3202(Lgeneralplus/com/GPCamDemo/FilesActivity;I)I

    .line 633
    const-string v4, "FileStatus"

    const/16 v6, 0xa7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->listImageItem:Ljava/util/ArrayList;
    invoke-static {}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$600()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 636
    iget-object v4, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$UpdateThumbnailRunnable;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    # setter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->_i32GotThumbnailFileIndex:I
    invoke-static {v4, v1}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$3302(Lgeneralplus/com/GPCamDemo/FilesActivity;I)I

    .line 637
    const/4 v4, 0x0

    # setter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->m_bRunCreateGridViewDone:Z
    invoke-static {v4}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$402(Z)Z

    .line 638
    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->listImageItem:Ljava/util/ArrayList;
    invoke-static {}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$600()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_2

    .line 639
    const/4 v4, 0x1

    # setter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->m_bRunCreateGridViewDone:Z
    invoke-static {v4}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$402(Z)Z

    goto/16 :goto_3

    .line 641
    :cond_b
    const-string v4, "FileStatus"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v6, 0xa6

    if-ne v4, v6, :cond_2

    .line 643
    const-string v4, "ThumbnailFilePath"

    const v6, 0x7f060047

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->listImageItem:Ljava/util/ArrayList;
    invoke-static {}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$600()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 646
    iget-object v4, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$UpdateThumbnailRunnable;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    # setter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->_i32GotThumbnailFileIndex:I
    invoke-static {v4, v1}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$3302(Lgeneralplus/com/GPCamDemo/FilesActivity;I)I

    .line 647
    const/4 v4, 0x0

    # setter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->m_bRunCreateGridViewDone:Z
    invoke-static {v4}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$402(Z)Z

    .line 648
    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->listImageItem:Ljava/util/ArrayList;
    invoke-static {}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$600()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_2

    .line 649
    const/4 v4, 0x1

    # setter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->m_bRunCreateGridViewDone:Z
    invoke-static {v4}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$402(Z)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_3

    .line 654
    .end local v1    # "i":I
    .end local v2    # "index":I
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_c
    const-string v4, "FilesActivity"

    const-string v5, "m_UpdateThumbnailThread = null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    iget-object v4, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$UpdateThumbnailRunnable;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    # invokes: Lgeneralplus/com/GPCamDemo/FilesActivity;->UpdateGridView()V
    invoke-static {v4}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$2800(Lgeneralplus/com/GPCamDemo/FilesActivity;)V

    .line 656
    const/4 v4, 0x0

    # setter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->m_UpdateThumbnailThread:Ljava/lang/Thread;
    invoke-static {v4}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$502(Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 657
    return-void
.end method
