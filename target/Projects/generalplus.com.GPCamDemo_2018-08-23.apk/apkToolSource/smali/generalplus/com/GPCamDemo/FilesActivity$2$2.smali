.class Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;
.super Ljava/lang/Object;
.source "FilesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgeneralplus/com/GPCamDemo/FilesActivity$2;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lgeneralplus/com/GPCamDemo/FilesActivity$2;

.field final synthetic val$fbFileExist:Z

.field final synthetic val$map:Ljava/util/HashMap;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lgeneralplus/com/GPCamDemo/FilesActivity$2;ILjava/util/HashMap;Z)V
    .locals 0
    .param p1, "this$1"    # Lgeneralplus/com/GPCamDemo/FilesActivity$2;

    .prologue
    .line 230
    iput-object p1, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->this$1:Lgeneralplus/com/GPCamDemo/FilesActivity$2;

    iput p2, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->val$position:I

    iput-object p3, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->val$map:Ljava/util/HashMap;

    iput-boolean p4, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->val$fbFileExist:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 20
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 233
    move-object/from16 v0, p0

    iget-object v15, v0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->this$1:Lgeneralplus/com/GPCamDemo/FilesActivity$2;

    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity$2;->m_Paramet:Landroid/widget/AdapterView;
    invoke-static {v15}, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->access$1200(Lgeneralplus/com/GPCamDemo/FilesActivity$2;)Landroid/widget/AdapterView;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->val$position:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    .line 234
    .local v8, "item":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->this$1:Lgeneralplus/com/GPCamDemo/FilesActivity$2;

    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity$2;->SetCharSequenceItems:[Ljava/lang/CharSequence;
    invoke-static {v15}, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->access$1300(Lgeneralplus/com/GPCamDemo/FilesActivity$2;)[Ljava/lang/CharSequence;

    move-result-object v15

    aget-object v15, v15, p2

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->this$1:Lgeneralplus/com/GPCamDemo/FilesActivity$2;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lgeneralplus/com/GPCamDemo/FilesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0b0022

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 235
    move-object/from16 v0, p0

    iget-object v15, v0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->this$1:Lgeneralplus/com/GPCamDemo/FilesActivity$2;

    iget-object v15, v15, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    # invokes: Lgeneralplus/com/GPCamDemo/FilesActivity;->IsDownloading()Z
    invoke-static {v15}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$1400(Lgeneralplus/com/GPCamDemo/FilesActivity;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->this$1:Lgeneralplus/com/GPCamDemo/FilesActivity$2;

    iget-object v15, v15, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    const/16 v16, 0x0

    # setter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->_bUserLeaveHint:Z
    invoke-static/range {v15 .. v16}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$1502(Lgeneralplus/com/GPCamDemo/FilesActivity;Z)Z

    .line 239
    const/4 v15, 0x1

    # setter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->bIsStopUpdateThumbnail:Z
    invoke-static {v15}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$1602(Z)Z

    .line 240
    const/4 v15, 0x1

    # setter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->bSaveImageItem:Z
    invoke-static {v15}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$1702(Z)Z

    .line 242
    move-object/from16 v0, p0

    iget-object v15, v0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->val$map:Ljava/util/HashMap;

    const-string v16, "FileName"

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v16, ".jpg"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 244
    move-object/from16 v0, p0

    iget-object v15, v0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->this$1:Lgeneralplus/com/GPCamDemo/FilesActivity$2;

    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity$2;->strStreamFilePath:Ljava/lang/String;
    invoke-static {v15}, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->access$1800(Lgeneralplus/com/GPCamDemo/FilesActivity$2;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_2

    .line 246
    new-instance v9, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->this$1:Lgeneralplus/com/GPCamDemo/FilesActivity$2;

    iget-object v15, v15, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->m_Context:Landroid/content/Context;
    invoke-static {v15}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$1100(Lgeneralplus/com/GPCamDemo/FilesActivity;)Landroid/content/Context;

    move-result-object v15

    invoke-direct {v9, v15}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 248
    .local v9, "iv":Landroid/widget/ImageView;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->this$1:Lgeneralplus/com/GPCamDemo/FilesActivity$2;

    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity$2;->strStreamFilePath:Ljava/lang/String;
    invoke-static {v15}, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->access$1800(Lgeneralplus/com/GPCamDemo/FilesActivity$2;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    invoke-virtual {v9, v15}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 256
    :goto_1
    new-instance v3, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->this$1:Lgeneralplus/com/GPCamDemo/FilesActivity$2;

    iget-object v15, v15, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->m_Context:Landroid/content/Context;
    invoke-static {v15}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$1100(Lgeneralplus/com/GPCamDemo/FilesActivity;)Landroid/content/Context;

    move-result-object v15

    invoke-direct {v3, v15}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 257
    .local v3, "ShowImgAlertDialog":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v3, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 258
    move-object/from16 v0, p0

    iget-object v15, v0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->this$1:Lgeneralplus/com/GPCamDemo/FilesActivity$2;

    iget-object v15, v15, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    invoke-virtual {v15}, Lgeneralplus/com/GPCamDemo/FilesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0b0002

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    new-instance v16, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2$1;-><init>(Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;)V

    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 266
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 249
    .end local v3    # "ShowImgAlertDialog":Landroid/app/AlertDialog$Builder;
    :catch_0
    move-exception v7

    .line 251
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 252
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 253
    .local v7, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v7}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_1

    .line 270
    .end local v7    # "e":Ljava/lang/OutOfMemoryError;
    .end local v9    # "iv":Landroid/widget/ImageView;
    :cond_2
    new-instance v13, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v15, v0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->this$1:Lgeneralplus/com/GPCamDemo/FilesActivity$2;

    iget-object v15, v15, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    const-class v16, Lgeneralplus/com/GPCamDemo/FileViewController;

    move-object/from16 v0, v16

    invoke-direct {v13, v15, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 271
    .local v13, "toVlcPlayer":Landroid/content/Intent;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 272
    .local v4, "b":Landroid/os/Bundle;
    const-string v15, "FileURL"

    move-object/from16 v0, p0

    iget-object v0, v0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->this$1:Lgeneralplus/com/GPCamDemo/FilesActivity$2;

    move-object/from16 v16, v0

    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity$2;->strStreamFilePath:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->access$1800(Lgeneralplus/com/GPCamDemo/FilesActivity$2;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v15, "FileFlag"

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 274
    const-string v15, "FileIndex"

    move-object/from16 v0, p0

    iget v0, v0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->val$position:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 275
    invoke-virtual {v13, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 276
    move-object/from16 v0, p0

    iget-object v15, v0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->this$1:Lgeneralplus/com/GPCamDemo/FilesActivity$2;

    iget-object v15, v15, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    invoke-virtual {v15, v13}, Lgeneralplus/com/GPCamDemo/FilesActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 281
    .end local v4    # "b":Landroid/os/Bundle;
    .end local v13    # "toVlcPlayer":Landroid/content/Intent;
    :cond_3
    new-instance v13, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v15, v0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->this$1:Lgeneralplus/com/GPCamDemo/FilesActivity$2;

    iget-object v15, v15, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    const-class v16, Lgeneralplus/com/GPCamDemo/FileViewController;

    move-object/from16 v0, v16

    invoke-direct {v13, v15, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 282
    .restart local v13    # "toVlcPlayer":Landroid/content/Intent;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 283
    .restart local v4    # "b":Landroid/os/Bundle;
    const-string v15, "FileURL"

    move-object/from16 v0, p0

    iget-object v0, v0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->this$1:Lgeneralplus/com/GPCamDemo/FilesActivity$2;

    move-object/from16 v16, v0

    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity$2;->strStreamFilePath:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->access$1800(Lgeneralplus/com/GPCamDemo/FilesActivity$2;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v15, "FileFlag"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 285
    const-string v15, "FileIndex"

    move-object/from16 v0, p0

    iget v0, v0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->val$position:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 286
    invoke-virtual {v13, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 287
    move-object/from16 v0, p0

    iget-object v15, v0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->this$1:Lgeneralplus/com/GPCamDemo/FilesActivity$2;

    iget-object v15, v15, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    invoke-virtual {v15, v13}, Lgeneralplus/com/GPCamDemo/FilesActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 289
    .end local v4    # "b":Landroid/os/Bundle;
    .end local v13    # "toVlcPlayer":Landroid/content/Intent;
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->this$1:Lgeneralplus/com/GPCamDemo/FilesActivity$2;

    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity$2;->SetCharSequenceItems:[Ljava/lang/CharSequence;
    invoke-static {v15}, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->access$1300(Lgeneralplus/com/GPCamDemo/FilesActivity$2;)[Ljava/lang/CharSequence;

    move-result-object v15

    aget-object v15, v15, p2

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->this$1:Lgeneralplus/com/GPCamDemo/FilesActivity$2;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lgeneralplus/com/GPCamDemo/FilesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0b000e

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 290
    move-object/from16 v0, p0

    iget-object v15, v0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->this$1:Lgeneralplus/com/GPCamDemo/FilesActivity$2;

    iget-object v15, v15, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    # invokes: Lgeneralplus/com/GPCamDemo/FilesActivity;->IsDownloading()Z
    invoke-static {v15}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$1400(Lgeneralplus/com/GPCamDemo/FilesActivity;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 294
    const/4 v15, 0x1

    # setter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->m_bPendingGetThumbnail:Z
    invoke-static {v15}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$1902(Z)Z

    .line 295
    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->m_DownloadDialog:Landroid/app/ProgressDialog;
    invoke-static {}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$2000()Landroid/app/ProgressDialog;

    move-result-object v15

    if-nez v15, :cond_5

    .line 296
    new-instance v15, Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->this$1:Lgeneralplus/com/GPCamDemo/FilesActivity$2;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    move-object/from16 v16, v0

    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->m_Context:Landroid/content/Context;
    invoke-static/range {v16 .. v16}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$1100(Lgeneralplus/com/GPCamDemo/FilesActivity;)Landroid/content/Context;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    # setter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->m_DownloadDialog:Landroid/app/ProgressDialog;
    invoke-static {v15}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$2002(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 297
    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->m_DownloadDialog:Landroid/app/ProgressDialog;
    invoke-static {}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$2000()Landroid/app/ProgressDialog;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->this$1:Lgeneralplus/com/GPCamDemo/FilesActivity$2;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lgeneralplus/com/GPCamDemo/FilesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0b0010

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 298
    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->m_DownloadDialog:Landroid/app/ProgressDialog;
    invoke-static {}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$2000()Landroid/app/ProgressDialog;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 299
    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->m_DownloadDialog:Landroid/app/ProgressDialog;
    invoke-static {}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$2000()Landroid/app/ProgressDialog;

    move-result-object v15

    const/16 v16, 0x64

    invoke-virtual/range {v15 .. v16}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 300
    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->m_DownloadDialog:Landroid/app/ProgressDialog;
    invoke-static {}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$2000()Landroid/app/ProgressDialog;

    move-result-object v15

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 301
    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->m_DownloadDialog:Landroid/app/ProgressDialog;
    invoke-static {}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$2000()Landroid/app/ProgressDialog;

    move-result-object v15

    const/16 v16, -0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->this$1:Lgeneralplus/com/GPCamDemo/FilesActivity$2;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lgeneralplus/com/GPCamDemo/FilesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const/high16 v18, 0x7f0b0000

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    new-instance v18, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2$2;-><init>(Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;)V

    invoke-virtual/range {v15 .. v18}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 317
    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->m_DownloadDialog:Landroid/app/ProgressDialog;
    invoke-static {}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$2000()Landroid/app/ProgressDialog;

    move-result-object v15

    new-instance v16, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2$3;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2$3;-><init>(Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;)V

    invoke-virtual/range {v15 .. v16}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 332
    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->m_DownloadDialog:Landroid/app/ProgressDialog;
    invoke-static {}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$2000()Landroid/app/ProgressDialog;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/ProgressDialog;->show()V

    .line 335
    :cond_5
    const/4 v15, 0x0

    # setter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->m_i32DownlaodStatus:I
    invoke-static {v15}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$2302(I)I

    .line 336
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v15

    invoke-virtual {v15}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamClearCommandQueue()V

    .line 337
    invoke-static {}, Lgeneralplus/com/GPCamLib/CamWrapper;->getComWrapperInstance()Lgeneralplus/com/GPCamLib/CamWrapper;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->val$position:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lgeneralplus/com/GPCamLib/CamWrapper;->GPCamSendGetFileRawdata(I)I

    goto/16 :goto_0

    .line 338
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->this$1:Lgeneralplus/com/GPCamDemo/FilesActivity$2;

    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity$2;->SetCharSequenceItems:[Ljava/lang/CharSequence;
    invoke-static {v15}, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->access$1300(Lgeneralplus/com/GPCamDemo/FilesActivity$2;)[Ljava/lang/CharSequence;

    move-result-object v15

    aget-object v15, v15, p2

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->this$1:Lgeneralplus/com/GPCamDemo/FilesActivity$2;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lgeneralplus/com/GPCamDemo/FilesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0b001a

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 339
    move-object/from16 v0, p0

    iget-object v15, v0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->this$1:Lgeneralplus/com/GPCamDemo/FilesActivity$2;

    iget-object v15, v15, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    # invokes: Lgeneralplus/com/GPCamDemo/FilesActivity;->IsDownloading()Z
    invoke-static {v15}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$1400(Lgeneralplus/com/GPCamDemo/FilesActivity;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 342
    move-object/from16 v0, p0

    iget-object v15, v0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->val$map:Ljava/util/HashMap;

    const-string v16, "FileTime"

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 343
    .local v10, "strFileTime":Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->this$1:Lgeneralplus/com/GPCamDemo/FilesActivity$2;

    iget-object v15, v15, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    .line 344
    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->m_Context:Landroid/content/Context;
    invoke-static {v15}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$1100(Lgeneralplus/com/GPCamDemo/FilesActivity;)Landroid/content/Context;

    move-result-object v15

    invoke-direct {v2, v15}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 345
    .local v2, "InfoAlertDialog":Landroid/app/AlertDialog$Builder;
    const-string v11, ""

    .local v11, "strInfoMsg":Ljava/lang/String;
    const-string v12, ""

    .line 346
    .local v12, "strTime":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "20"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x2

    const/16 v17, 0x4

    .line 347
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x4

    const/16 v17, 0x6

    .line 348
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x6

    const/16 v17, 0x8

    .line 349
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ":"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x8

    const/16 v17, 0xa

    .line 350
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ":"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0xa

    const/16 v17, 0xc

    .line 351
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 352
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Name: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->val$map:Ljava/util/HashMap;

    move-object/from16 v16, v0

    const-string v17, "FileName"

    invoke-virtual/range {v16 .. v17}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\nTime: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\nSize: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->val$map:Ljava/util/HashMap;

    move-object/from16 v16, v0

    const-string v17, "FileSize"

    .line 354
    invoke-virtual/range {v16 .. v17}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 355
    move-object/from16 v0, p0

    iget-object v15, v0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->this$1:Lgeneralplus/com/GPCamDemo/FilesActivity$2;

    iget-object v15, v15, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    invoke-virtual {v15}, Lgeneralplus/com/GPCamDemo/FilesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0b001a

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 356
    invoke-virtual {v2, v11}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 357
    const/4 v15, 0x1

    invoke-virtual {v2, v15}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 358
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 359
    .end local v2    # "InfoAlertDialog":Landroid/app/AlertDialog$Builder;
    .end local v10    # "strFileTime":Ljava/lang/String;
    .end local v11    # "strInfoMsg":Ljava/lang/String;
    .end local v12    # "strTime":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->this$1:Lgeneralplus/com/GPCamDemo/FilesActivity$2;

    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity$2;->SetCharSequenceItems:[Ljava/lang/CharSequence;
    invoke-static {v15}, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->access$1300(Lgeneralplus/com/GPCamDemo/FilesActivity$2;)[Ljava/lang/CharSequence;

    move-result-object v15

    aget-object v15, v15, p2

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->this$1:Lgeneralplus/com/GPCamDemo/FilesActivity$2;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lgeneralplus/com/GPCamDemo/FilesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0b0009

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 360
    sget-boolean v15, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_bCanDeleteSDFile:Z

    if-nez v15, :cond_8

    .line 361
    new-instance v6, Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->this$1:Lgeneralplus/com/GPCamDemo/FilesActivity$2;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    move-object/from16 v16, v0

    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->strDevicePICLocation:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$900(Lgeneralplus/com/GPCamDemo/FilesActivity;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->val$map:Ljava/util/HashMap;

    move-object/from16 v16, v0

    const-string v17, "FileName"

    invoke-virtual/range {v16 .. v17}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v6, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 362
    .local v6, "deviceDirDelete":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 363
    move-object/from16 v0, p0

    iget-object v15, v0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->this$1:Lgeneralplus/com/GPCamDemo/FilesActivity$2;

    iget-object v15, v15, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    new-instance v16, Landroid/content/Intent;

    const-string v17, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "file://"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    invoke-direct/range {v16 .. v18}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual/range {v15 .. v16}, Lgeneralplus/com/GPCamDemo/FilesActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 366
    .end local v6    # "deviceDirDelete":Ljava/io/File;
    :cond_8
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->this$1:Lgeneralplus/com/GPCamDemo/FilesActivity$2;

    iget-object v15, v15, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->m_Context:Landroid/content/Context;
    invoke-static {v15}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$1100(Lgeneralplus/com/GPCamDemo/FilesActivity;)Landroid/content/Context;

    move-result-object v15

    invoke-direct {v5, v15}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 367
    .local v5, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v14, 0x0

    .line 368
    .local v14, "week":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->val$fbFileExist:Z

    if-eqz v15, :cond_9

    .line 369
    const/4 v15, 0x2

    new-array v14, v15, [Ljava/lang/String;

    .end local v14    # "week":[Ljava/lang/String;
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->this$1:Lgeneralplus/com/GPCamDemo/FilesActivity$2;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lgeneralplus/com/GPCamDemo/FilesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0b000b

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->this$1:Lgeneralplus/com/GPCamDemo/FilesActivity$2;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lgeneralplus/com/GPCamDemo/FilesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0b000a

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    .line 370
    .restart local v14    # "week":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->this$1:Lgeneralplus/com/GPCamDemo/FilesActivity$2;

    iget-object v15, v15, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->m_bCheckboxArray:[Z
    invoke-static {v15}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$2400(Lgeneralplus/com/GPCamDemo/FilesActivity;)[Z

    move-result-object v15

    new-instance v16, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2$4;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2$4;-><init>(Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;)V

    move-object/from16 v0, v16

    invoke-virtual {v5, v14, v15, v0}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 391
    :goto_2
    const v15, 0x7f0b0036

    new-instance v16, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2$6;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2$6;-><init>(Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;)V

    move-object/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    const v16, 0x7f0b001d

    const/16 v17, 0x0

    .line 420
    invoke-virtual/range {v15 .. v17}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 421
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 380
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->this$1:Lgeneralplus/com/GPCamDemo/FilesActivity$2;

    iget-object v15, v15, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->m_bCheckboxArray:[Z
    invoke-static {v15}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$2400(Lgeneralplus/com/GPCamDemo/FilesActivity;)[Z

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x1

    aput-boolean v17, v15, v16

    .line 381
    const/4 v15, 0x1

    new-array v14, v15, [Ljava/lang/String;

    .end local v14    # "week":[Ljava/lang/String;
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;->this$1:Lgeneralplus/com/GPCamDemo/FilesActivity$2;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lgeneralplus/com/GPCamDemo/FilesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0b000b

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    .line 382
    .restart local v14    # "week":[Ljava/lang/String;
    const/4 v15, 0x1

    new-array v15, v15, [Z

    const/16 v16, 0x0

    const/16 v17, 0x1

    aput-boolean v17, v15, v16

    new-instance v16, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2$5;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2$5;-><init>(Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;)V

    move-object/from16 v0, v16

    invoke-virtual {v5, v14, v15, v0}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2
.end method
