.class Lcom/android/mms/ui/ConversationList$14;
.super Ljava/lang/Object;
.source "ConversationList.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationList;)V
    .locals 0
    .parameter

    .prologue
    .line 1042
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$14;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const-string v2, "Mms/ConversationList"

    .line 1044
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 1045
    packed-switch p2, :pswitch_data_0

    :cond_0
    :pswitch_0
    move v0, v1

    .line 1064
    .end local p0
    :goto_0
    return v0

    .line 1047
    .restart local p0
    :pswitch_1
    const-string v0, "Mms/ConversationList"

    const-string v0, "mNewComposeKeyListener(),KEYCODE_DPAD_RIGHT"

    invoke-static {v2, v0}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$14;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->access$600(Lcom/android/mms/ui/ConversationList;)Landroid/app/Activity;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationComposer;->requestFocusOnComposer()Z

    move-result v0

    goto :goto_0

    .line 1054
    .restart local p0
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$14;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->access$1400(Lcom/android/mms/ui/ConversationList;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListView;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1055
    const-string v0, "Mms/ConversationList"

    const-string v0, "mNewComposeKeyListener(), KEYCODE_DPAD_DOWN"

    invoke-static {v2, v0}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$14;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->access$1400(Lcom/android/mms/ui/ConversationList;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->setSelection(I)V

    .line 1057
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$14;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->access$1400(Lcom/android/mms/ui/ConversationList;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwListView;->requestFocus()Z

    move-result v0

    goto :goto_0

    .line 1045
    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
