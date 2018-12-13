.class Lgeneralplus/com/GPCamDemo/FilesActivity$2;
.super Ljava/lang/Object;
.source "FilesActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgeneralplus/com/GPCamDemo/FilesActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private SetCharSequenceItems:[Ljava/lang/CharSequence;

.field private m_Paramet:Landroid/widget/AdapterView;

.field private m_i64ID:J

.field private strStreamFilePath:Ljava/lang/String;

.field final synthetic this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;


# direct methods
.method constructor <init>(Lgeneralplus/com/GPCamDemo/FilesActivity;)V
    .locals 1
    .param p1, "this$0"    # Lgeneralplus/com/GPCamDemo/FilesActivity;

    .prologue
    .line 170
    iput-object p1, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    const-string v0, ""

    iput-object v0, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->strStreamFilePath:Ljava/lang/String;

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->SetCharSequenceItems:[Ljava/lang/CharSequence;

    return-void
.end method

.method static synthetic access$1200(Lgeneralplus/com/GPCamDemo/FilesActivity$2;)Landroid/widget/AdapterView;
    .locals 1
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/FilesActivity$2;

    .prologue
    .line 170
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->m_Paramet:Landroid/widget/AdapterView;

    return-object v0
.end method

.method static synthetic access$1300(Lgeneralplus/com/GPCamDemo/FilesActivity$2;)[Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/FilesActivity$2;

    .prologue
    .line 170
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->SetCharSequenceItems:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$1800(Lgeneralplus/com/GPCamDemo/FilesActivity$2;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lgeneralplus/com/GPCamDemo/FilesActivity$2;

    .prologue
    .line 170
    iget-object v0, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->strStreamFilePath:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 14
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iput-object p1, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->m_Paramet:Landroid/widget/AdapterView;

    .line 182
    move-wide/from16 v0, p4

    iput-wide v0, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->m_i64ID:J

    .line 184
    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->listImageItem:Ljava/util/ArrayList;
    invoke-static {}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$600()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    move/from16 v0, p3

    if-lt v0, v8, :cond_1

    .line 185
    const-string v8, "FilesActivity"

    const-string v9, "position >= listImageItem.size()"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->listImageItem:Ljava/util/ArrayList;
    invoke-static {}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$600()Ljava/util/ArrayList;

    move-result-object v8

    move/from16 v0, p3

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    .line 196
    .local v7, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v8, "FileStatus"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 197
    .local v6, "iFileStatus":I
    const/16 v8, 0xa3

    if-eq v6, v8, :cond_2

    const/16 v8, 0xa7

    if-ne v6, v8, :cond_0

    .line 200
    :cond_2
    sget-boolean v8, Lgeneralplus/com/GPCamDemo/FilesActivity;->m_bCanDeleteSDFile:Z

    if-nez v8, :cond_4

    .line 201
    iget-object v8, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->CharSequenceItemsDefault:[Ljava/lang/CharSequence;
    invoke-static {v8}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$700(Lgeneralplus/com/GPCamDemo/FilesActivity;)[Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->SetCharSequenceItems:[Ljava/lang/CharSequence;

    .line 207
    :goto_1
    const-string v8, ""

    iput-object v8, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->strStreamFilePath:Ljava/lang/String;

    .line 209
    new-instance v4, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->strDevicePICLocation:Ljava/lang/String;
    invoke-static {v9}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$900(Lgeneralplus/com/GPCamDemo/FilesActivity;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "FileName"

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 211
    .local v4, "dir":Ljava/io/File;
    const/4 v3, 0x0

    .line 212
    .local v3, "bFileExist":Z
    const-string v8, "FilesActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "dir.exists() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",dir.length() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", dir.length() / 1024 = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/16 v12, 0x400

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", MAPKEY_FileSize = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "FileSize"

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x400

    div-long v10, v8, v10

    const-string v8, "FileSize"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-long v8, v8

    cmp-long v8, v10, v8

    if-nez v8, :cond_3

    .line 214
    iget-object v8, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->CharSequenceItemsDelete:[Ljava/lang/CharSequence;
    invoke-static {v8}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$1000(Lgeneralplus/com/GPCamDemo/FilesActivity;)[Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->SetCharSequenceItems:[Ljava/lang/CharSequence;

    .line 215
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->strDevicePICLocation:Ljava/lang/String;
    invoke-static {v9}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$900(Lgeneralplus/com/GPCamDemo/FilesActivity;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "FileName"

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->strStreamFilePath:Ljava/lang/String;

    .line 216
    const/4 v3, 0x1

    .line 218
    :cond_3
    move v5, v3

    .line 220
    .local v5, "fbFileExist":Z
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->m_Context:Landroid/content/Context;
    invoke-static {v8}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$1100(Lgeneralplus/com/GPCamDemo/FilesActivity;)Landroid/content/Context;

    move-result-object v8

    invoke-direct {v2, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 221
    .local v2, "ChoseAlertDialog":Landroid/app/AlertDialog$Builder;
    iget-object v8, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    invoke-virtual {v8}, Lgeneralplus/com/GPCamDemo/FilesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0002

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lgeneralplus/com/GPCamDemo/FilesActivity$2$1;

    invoke-direct {v9, p0}, Lgeneralplus/com/GPCamDemo/FilesActivity$2$1;-><init>(Lgeneralplus/com/GPCamDemo/FilesActivity$2;)V

    invoke-virtual {v2, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 229
    iget-object v8, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->SetCharSequenceItems:[Ljava/lang/CharSequence;

    new-instance v9, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;

    move/from16 v0, p3

    invoke-direct {v9, p0, v0, v7, v5}, Lgeneralplus/com/GPCamDemo/FilesActivity$2$2;-><init>(Lgeneralplus/com/GPCamDemo/FilesActivity$2;ILjava/util/HashMap;Z)V

    invoke-virtual {v2, v8, v9}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 429
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 430
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 204
    .end local v2    # "ChoseAlertDialog":Landroid/app/AlertDialog$Builder;
    .end local v3    # "bFileExist":Z
    .end local v4    # "dir":Ljava/io/File;
    .end local v5    # "fbFileExist":Z
    :cond_4
    iget-object v8, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->this$0:Lgeneralplus/com/GPCamDemo/FilesActivity;

    # getter for: Lgeneralplus/com/GPCamDemo/FilesActivity;->CharSequenceItemsSDdelete:[Ljava/lang/CharSequence;
    invoke-static {v8}, Lgeneralplus/com/GPCamDemo/FilesActivity;->access$800(Lgeneralplus/com/GPCamDemo/FilesActivity;)[Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Lgeneralplus/com/GPCamDemo/FilesActivity$2;->SetCharSequenceItems:[Ljava/lang/CharSequence;

    goto/16 :goto_1
.end method
