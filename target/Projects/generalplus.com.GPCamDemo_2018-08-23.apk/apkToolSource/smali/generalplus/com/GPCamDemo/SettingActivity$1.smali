.class Lgeneralplus/com/GPCamDemo/SettingActivity$1;
.super Landroid/text/method/DigitsKeyListener;
.source "SettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgeneralplus/com/GPCamDemo/SettingActivity;->getEditTextPreference(II)Landroid/preference/EditTextPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lgeneralplus/com/GPCamDemo/SettingActivity;


# direct methods
.method constructor <init>(Lgeneralplus/com/GPCamDemo/SettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lgeneralplus/com/GPCamDemo/SettingActivity;

    .prologue
    .line 155
    iput-object p1, p0, Lgeneralplus/com/GPCamDemo/SettingActivity$1;->this$0:Lgeneralplus/com/GPCamDemo/SettingActivity;

    invoke-direct {p0}, Landroid/text/method/DigitsKeyListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAcceptedChars()[C
    .locals 2

    .prologue
    .line 162
    const-string v1, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 163
    .local v0, "data":[C
    return-object v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 158
    const/16 v0, 0x80

    return v0
.end method
