.class Lcom/android/mms/ui/CbConfigPreferenceActivity$3;
.super Ljava/lang/Object;
.source "CbConfigPreferenceActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/CbConfigPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/CbConfigPreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$3;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 14
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 268
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 269
    .local v4, key:Ljava/lang/String;
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Boolean;

    move-object v1, v0

    .line 271
    .local v1, bChecked:Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 272
    iget-object v6, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$3;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    invoke-static {v6}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->access$800(Lcom/android/mms/ui/CbConfigPreferenceActivity;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "pref_cb_my_channel_max_count"

    invoke-interface {v6, v7, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 274
    .local v2, cb_channel_max:I
    iget-object v6, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$3;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    invoke-static {v6}, Lcom/android/mms/ui/ChannelUtils;->getCheckedCount(Landroid/content/Context;)I

    move-result v3

    .line 275
    .local v3, checkedCount:I
    if-lt v3, v2, :cond_2

    .line 277
    iget-object v6, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$3;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    invoke-static {v6}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->access$900(Lcom/android/mms/ui/CbConfigPreferenceActivity;)Landroid/widget/Toast;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$3;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    invoke-static {v6}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->access$900(Lcom/android/mms/ui/CbConfigPreferenceActivity;)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$3;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    invoke-static {v6}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->access$900(Lcom/android/mms/ui/CbConfigPreferenceActivity;)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->isShown()Z

    move-result v6

    if-nez v6, :cond_1

    .line 278
    :cond_0
    iget-object v6, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$3;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    iget-object v7, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$3;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    iget-object v8, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$3;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    const v9, 0x7f09008e

    new-array v10, v13, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-virtual {v8, v9, v10}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->access$902(Lcom/android/mms/ui/CbConfigPreferenceActivity;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 281
    iget-object v6, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$3;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    invoke-static {v6}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->access$900(Lcom/android/mms/ui/CbConfigPreferenceActivity;)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 283
    :cond_1
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1
    invoke-virtual {p1, v12}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    move v6, v12

    .line 292
    .end local v2           #cb_channel_max:I
    .end local v3           #checkedCount:I
    :goto_0
    return v6

    .line 288
    .restart local p1
    :cond_2
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 289
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "is_checked"

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v13

    :goto_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 290
    iget-object v6, p0, Lcom/android/mms/ui/CbConfigPreferenceActivity$3;->this$0:Lcom/android/mms/ui/CbConfigPreferenceActivity;

    invoke-static {v6}, Lcom/android/mms/ui/CbConfigPreferenceActivity;->access$600(Lcom/android/mms/ui/CbConfigPreferenceActivity;)Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/Telephony$Channels;->CONTENT_URI:Landroid/net/Uri;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "channel_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v5, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v6, v13

    .line 292
    goto :goto_0

    :cond_3
    move v7, v12

    .line 289
    goto :goto_1
.end method
