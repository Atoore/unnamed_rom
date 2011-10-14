.class Lcom/android/mms/ui/TranslateActivity$9;
.super Ljava/lang/Object;
.source "TranslateActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 960
    iput-object p1, p0, Lcom/android/mms/ui/TranslateActivity$9;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 965
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 970
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .parameter "charSequence"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 973
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity$9;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-static {v0}, Lcom/android/mms/ui/TranslateActivity;->access$200(Lcom/android/mms/ui/TranslateActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 974
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity$9;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-static {v0}, Lcom/android/mms/ui/TranslateActivity;->access$1800(Lcom/android/mms/ui/TranslateActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 975
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity$9;->this$0:Lcom/android/mms/ui/TranslateActivity;

    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity$9;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-static {v1}, Lcom/android/mms/ui/TranslateActivity;->access$1900(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-static {v0, v1, v4, v3}, Lcom/android/mms/ui/TranslateActivity;->access$1300(Lcom/android/mms/ui/TranslateActivity;Landroid/view/View;ZZ)V

    .line 982
    :goto_0
    return-void

    .line 977
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity$9;->this$0:Lcom/android/mms/ui/TranslateActivity;

    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity$9;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-static {v1}, Lcom/android/mms/ui/TranslateActivity;->access$1900(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-static {v0, v1, v3, v3}, Lcom/android/mms/ui/TranslateActivity;->access$1300(Lcom/android/mms/ui/TranslateActivity;Landroid/view/View;ZZ)V

    goto :goto_0

    .line 979
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity$9;->this$0:Lcom/android/mms/ui/TranslateActivity;

    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity$9;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-static {v1}, Lcom/android/mms/ui/TranslateActivity;->access$1000(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity$9;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-static {v2}, Lcom/android/mms/ui/TranslateActivity;->access$1100(Lcom/android/mms/ui/TranslateActivity;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity$9;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-static {v2}, Lcom/android/mms/ui/TranslateActivity;->access$1200(Lcom/android/mms/ui/TranslateActivity;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v4

    :goto_1
    invoke-static {v0, v1, v2, v4}, Lcom/android/mms/ui/TranslateActivity;->access$1300(Lcom/android/mms/ui/TranslateActivity;Landroid/view/View;ZZ)V

    .line 980
    iget-object v0, p0, Lcom/android/mms/ui/TranslateActivity$9;->this$0:Lcom/android/mms/ui/TranslateActivity;

    iget-object v1, p0, Lcom/android/mms/ui/TranslateActivity$9;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-static {v1}, Lcom/android/mms/ui/TranslateActivity;->access$1400(Lcom/android/mms/ui/TranslateActivity;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/TranslateActivity$9;->this$0:Lcom/android/mms/ui/TranslateActivity;

    invoke-static {v2}, Lcom/android/mms/ui/TranslateActivity;->access$1100(Lcom/android/mms/ui/TranslateActivity;)Z

    move-result v2

    invoke-static {v0, v1, v2, v4}, Lcom/android/mms/ui/TranslateActivity;->access$1300(Lcom/android/mms/ui/TranslateActivity;Landroid/view/View;ZZ)V

    goto :goto_0

    :cond_2
    move v2, v3

    .line 979
    goto :goto_1
.end method
