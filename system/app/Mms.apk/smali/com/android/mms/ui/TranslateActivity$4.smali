.class Lcom/android/mms/ui/TranslateActivity$4;
.super Landroid/content/BroadcastReceiver;
.source "TranslateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/TranslateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/TranslateActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/TranslateActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 778
    iput-object p1, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v10, 0x2

    const/4 v7, -0x1

    const/4 v6, -0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 782
    const-string v5, "type"

    invoke-virtual {p2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 783
    .local v4, type:I
    const-string v5, "error_type"

    invoke-virtual {p2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 784
    .local v1, errorType:I
    packed-switch v4, :pswitch_data_0

    .line 848
    :cond_0
    :goto_0
    return-void

    .line 786
    :pswitch_0
    const-string v5, "detect_result"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 787
    .local v2, mDetectResultCode:Ljava/lang/String;
    if-nez v2, :cond_2

    .line 788
    iget-object v5, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    iget-object v6, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-static {v6}, Lcom/android/mms/ui/TranslateActivity;->access$200(Lcom/android/mms/ui/TranslateActivity;)Z

    move-result v6

    if-nez v6, :cond_1

    move v6, v8

    :goto_1
    invoke-static {v5, v6, v8}, Lcom/android/mms/ui/TranslateActivity;->access$300(Lcom/android/mms/ui/TranslateActivity;ZZ)V

    .line 790
    :try_start_0
    iget-object v5, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-virtual {v5}, Lcom/android/mms/ui/TranslateActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0901db

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 792
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 793
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "Mms/TranslateActivity"

    const-string v6, "cannot create toast popup"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    move v6, v9

    .line 788
    goto :goto_1

    .line 795
    :cond_2
    if-eqz v2, :cond_5

    if-nez v1, :cond_5

    .line 796
    iget-object v5, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-static {v5}, Lcom/android/mms/ui/TranslateActivity;->access$200(Lcom/android/mms/ui/TranslateActivity;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 797
    iget-object v5, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-static {v5}, Lcom/android/mms/ui/TranslateActivity;->access$400(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/Button;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    iget-object v6, v6, Lcom/android/mms/ui/TranslateActivity;->mTranslateLanguages:Lcom/android/mms/util/TranslateLanguages;

    invoke-virtual {v6, v2}, Lcom/android/mms/util/TranslateLanguages;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 799
    iget-object v5, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    iget-object v5, v5, Lcom/android/mms/ui/TranslateActivity;->mLanguageControl:Lcom/android/mms/util/LanguageControl;

    invoke-virtual {v5, v2}, Lcom/android/mms/util/LanguageControl;->setToLanguageKey(Ljava/lang/String;)V

    .line 806
    :goto_2
    iget-object v5, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-static {v5}, Lcom/android/mms/ui/TranslateActivity;->access$000(Lcom/android/mms/ui/TranslateActivity;)V

    .line 807
    if-eqz v2, :cond_0

    .line 808
    iget-object v5, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    iget-object v6, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-static {v6}, Lcom/android/mms/ui/TranslateActivity;->access$200(Lcom/android/mms/ui/TranslateActivity;)Z

    move-result v6

    if-nez v6, :cond_4

    move v6, v8

    :goto_3
    invoke-static {v5, v2, v6}, Lcom/android/mms/ui/TranslateActivity;->access$600(Lcom/android/mms/ui/TranslateActivity;Ljava/lang/String;Z)V

    goto :goto_0

    .line 802
    :cond_3
    iget-object v5, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-static {v5}, Lcom/android/mms/ui/TranslateActivity;->access$500(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/Button;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    iget-object v6, v6, Lcom/android/mms/ui/TranslateActivity;->mTranslateLanguages:Lcom/android/mms/util/TranslateLanguages;

    invoke-virtual {v6, v2}, Lcom/android/mms/util/TranslateLanguages;->getLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 804
    iget-object v5, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    iget-object v5, v5, Lcom/android/mms/ui/TranslateActivity;->mLanguageControl:Lcom/android/mms/util/LanguageControl;

    invoke-virtual {v5, v2}, Lcom/android/mms/util/LanguageControl;->setFromLanguageKey(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move v6, v9

    .line 808
    goto :goto_3

    .line 809
    :cond_5
    if-ne v1, v7, :cond_7

    .line 810
    iget-object v5, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    iget-object v6, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-static {v6}, Lcom/android/mms/ui/TranslateActivity;->access$200(Lcom/android/mms/ui/TranslateActivity;)Z

    move-result v6

    if-nez v6, :cond_6

    move v6, v8

    :goto_4
    invoke-static {v5, v6, v8}, Lcom/android/mms/ui/TranslateActivity;->access$300(Lcom/android/mms/ui/TranslateActivity;ZZ)V

    .line 811
    iget-object v5, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-static {v5}, Lcom/android/mms/ui/TranslateActivity;->access$700(Lcom/android/mms/ui/TranslateActivity;)V

    goto/16 :goto_0

    :cond_6
    move v6, v9

    .line 810
    goto :goto_4

    .line 812
    :cond_7
    if-ne v1, v6, :cond_9

    .line 813
    iget-object v5, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    iget-object v6, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-static {v6}, Lcom/android/mms/ui/TranslateActivity;->access$200(Lcom/android/mms/ui/TranslateActivity;)Z

    move-result v6

    if-nez v6, :cond_8

    move v6, v8

    :goto_5
    invoke-static {v5, v6, v8}, Lcom/android/mms/ui/TranslateActivity;->access$300(Lcom/android/mms/ui/TranslateActivity;ZZ)V

    .line 814
    iget-object v5, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-static {v5, v8}, Lcom/android/mms/ui/TranslateActivity;->access$800(Lcom/android/mms/ui/TranslateActivity;I)V

    goto/16 :goto_0

    :cond_8
    move v6, v9

    .line 813
    goto :goto_5

    .line 816
    :cond_9
    iget-object v5, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    iget-object v6, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-static {v6}, Lcom/android/mms/ui/TranslateActivity;->access$200(Lcom/android/mms/ui/TranslateActivity;)Z

    move-result v6

    if-nez v6, :cond_a

    move v6, v8

    :goto_6
    invoke-static {v5, v6, v8}, Lcom/android/mms/ui/TranslateActivity;->access$300(Lcom/android/mms/ui/TranslateActivity;ZZ)V

    .line 817
    iget-object v5, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-static {v5, v8}, Lcom/android/mms/ui/TranslateActivity;->access$800(Lcom/android/mms/ui/TranslateActivity;I)V

    goto/16 :goto_0

    :cond_a
    move v6, v9

    .line 816
    goto :goto_6

    .line 821
    .end local v2           #mDetectResultCode:Ljava/lang/String;
    :pswitch_1
    const-string v5, "result_string"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 822
    .local v3, transResult:Ljava/lang/String;
    if-eqz v3, :cond_b

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-gez v5, :cond_c

    .line 823
    :cond_b
    iget-object v5, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-static {v5, v10}, Lcom/android/mms/ui/TranslateActivity;->access$800(Lcom/android/mms/ui/TranslateActivity;I)V

    goto/16 :goto_0

    .line 824
    :cond_c
    if-nez v1, :cond_12

    .line 825
    iget-object v5, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-static {v5}, Lcom/android/mms/ui/TranslateActivity;->access$200(Lcom/android/mms/ui/TranslateActivity;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 826
    iget-object v5, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-static {v5}, Lcom/android/mms/ui/TranslateActivity;->access$900(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 827
    if-eqz v3, :cond_d

    .line 828
    iget-object v5, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-static {v5}, Lcom/android/mms/ui/TranslateActivity;->access$900(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setSelection(I)V

    .line 829
    :cond_d
    iget-object v5, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    iget-object v6, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-static {v6}, Lcom/android/mms/ui/TranslateActivity;->access$1000(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/Button;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-static {v7}, Lcom/android/mms/ui/TranslateActivity;->access$1100(Lcom/android/mms/ui/TranslateActivity;)Z

    move-result v7

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-static {v7}, Lcom/android/mms/ui/TranslateActivity;->access$1200(Lcom/android/mms/ui/TranslateActivity;)Z

    move-result v7

    if-nez v7, :cond_e

    move v7, v8

    :goto_7
    invoke-static {v5, v6, v7, v8}, Lcom/android/mms/ui/TranslateActivity;->access$1300(Lcom/android/mms/ui/TranslateActivity;Landroid/view/View;ZZ)V

    .line 830
    iget-object v5, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    iget-object v6, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-static {v6}, Lcom/android/mms/ui/TranslateActivity;->access$1400(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/Button;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-static {v7}, Lcom/android/mms/ui/TranslateActivity;->access$1100(Lcom/android/mms/ui/TranslateActivity;)Z

    move-result v7

    invoke-static {v5, v6, v7, v8}, Lcom/android/mms/ui/TranslateActivity;->access$1300(Lcom/android/mms/ui/TranslateActivity;Landroid/view/View;ZZ)V

    .line 831
    iget-object v5, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    iget-object v6, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-static {v6}, Lcom/android/mms/ui/TranslateActivity;->access$900(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-static {v5, v6, v9, v8}, Lcom/android/mms/ui/TranslateActivity;->access$1300(Lcom/android/mms/ui/TranslateActivity;Landroid/view/View;ZZ)V

    goto/16 :goto_0

    :cond_e
    move v7, v9

    .line 829
    goto :goto_7

    .line 834
    :cond_f
    iget-object v5, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-static {v5}, Lcom/android/mms/ui/TranslateActivity;->access$1500(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 835
    if-eqz v3, :cond_10

    .line 836
    iget-object v5, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-static {v5}, Lcom/android/mms/ui/TranslateActivity;->access$1500(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setSelection(I)V

    .line 837
    :cond_10
    iget-object v5, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    iget-object v6, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-static {v6}, Lcom/android/mms/ui/TranslateActivity;->access$1000(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/Button;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-static {v7}, Lcom/android/mms/ui/TranslateActivity;->access$1100(Lcom/android/mms/ui/TranslateActivity;)Z

    move-result v7

    if-eqz v7, :cond_11

    iget-object v7, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-static {v7}, Lcom/android/mms/ui/TranslateActivity;->access$1200(Lcom/android/mms/ui/TranslateActivity;)Z

    move-result v7

    if-nez v7, :cond_11

    move v7, v8

    :goto_8
    invoke-static {v5, v6, v7, v8}, Lcom/android/mms/ui/TranslateActivity;->access$1300(Lcom/android/mms/ui/TranslateActivity;Landroid/view/View;ZZ)V

    .line 838
    iget-object v5, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    iget-object v6, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-static {v6}, Lcom/android/mms/ui/TranslateActivity;->access$1400(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/Button;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-static {v7}, Lcom/android/mms/ui/TranslateActivity;->access$1100(Lcom/android/mms/ui/TranslateActivity;)Z

    move-result v7

    invoke-static {v5, v6, v7, v8}, Lcom/android/mms/ui/TranslateActivity;->access$1300(Lcom/android/mms/ui/TranslateActivity;Landroid/view/View;ZZ)V

    .line 839
    iget-object v5, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    iget-object v6, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-static {v6}, Lcom/android/mms/ui/TranslateActivity;->access$1500(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-static {v5, v6, v9, v8}, Lcom/android/mms/ui/TranslateActivity;->access$1300(Lcom/android/mms/ui/TranslateActivity;Landroid/view/View;ZZ)V

    goto/16 :goto_0

    :cond_11
    move v7, v9

    .line 837
    goto :goto_8

    .line 842
    :cond_12
    if-ne v1, v7, :cond_13

    .line 843
    iget-object v5, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-static {v5}, Lcom/android/mms/ui/TranslateActivity;->access$700(Lcom/android/mms/ui/TranslateActivity;)V

    goto/16 :goto_0

    .line 844
    :cond_13
    if-ne v1, v6, :cond_0

    .line 845
    iget-object v5, p0, Lcom/android/mms/ui/TranslateActivity$4;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-static {v5, v10}, Lcom/android/mms/ui/TranslateActivity;->access$800(Lcom/android/mms/ui/TranslateActivity;I)V

    goto/16 :goto_0

    .line 784
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
