.class Lcom/android/mms/ui/ConversationList$11;
.super Ljava/lang/Object;
.source "ConversationList.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


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
    .line 797
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$11;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 9
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v8, 0x0

    .line 799
    move-object v0, p3

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;

    move-object v3, v0

    .line 801
    .local v3, info:Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;
    iget-object v6, p0, Lcom/android/mms/ui/ConversationList$11;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v6}, Lcom/android/mms/ui/ConversationList;->access$1400(Lcom/android/mms/ui/ConversationList;)Lcom/sec/android/touchwiz/widget/TwListView;

    move-result-object v6

    iget v7, v3, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v6, v7}, Lcom/sec/android/touchwiz/widget/TwListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v4

    .line 802
    .local v4, itemObject:Ljava/lang/Object;
    instance-of v6, v4, Landroid/database/Cursor;

    if-nez v6, :cond_1

    .line 838
    :cond_0
    :goto_0
    return-void

    .line 804
    :cond_1
    move-object v0, v4

    check-cast v0, Landroid/database/Cursor;

    move-object v2, v0

    .line 806
    .local v2, cursor:Landroid/database/Cursor;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    if-ltz v6, :cond_0

    .line 810
    iget-object v6, p0, Lcom/android/mms/ui/ConversationList$11;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v6}, Lcom/android/mms/ui/ConversationList;->access$600(Lcom/android/mms/ui/ConversationList;)Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/android/mms/data/Conversation;->from(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/data/Conversation;

    move-result-object v1

    .line 811
    .local v1, conv:Lcom/android/mms/data/Conversation;
    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v5

    .line 815
    .local v5, recipients:Lcom/android/mms/data/ContactList;
    invoke-virtual {v5}, Lcom/android/mms/data/ContactList;->size()I

    move-result v6

    if-nez v6, :cond_3

    .line 816
    iget-object v6, p0, Lcom/android/mms/ui/ConversationList$11;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v6}, Lcom/android/mms/ui/ConversationList;->access$600(Lcom/android/mms/ui/ConversationList;)Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f09000f

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 825
    :goto_1
    invoke-virtual {v5}, Lcom/android/mms/data/ContactList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->isCbSms()Z

    move-result v6

    if-nez v6, :cond_2

    .line 827
    invoke-virtual {v5, v8}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/data/Contact;

    invoke-virtual {v6}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 828
    const/16 v6, 0xca

    const v7, 0x7f090066

    invoke-interface {p1, v8, v6, v8, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 833
    :cond_2
    :goto_2
    const/16 v6, 0xc8

    const v7, 0x7f09000b

    invoke-interface {p1, v8, v6, v8, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 837
    iget-object v6, p0, Lcom/android/mms/ui/ConversationList$11;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v6, v1}, Lcom/android/mms/ui/ConversationList;->access$1502(Lcom/android/mms/ui/ConversationList;Lcom/android/mms/data/Conversation;)Lcom/android/mms/data/Conversation;

    goto :goto_0

    .line 818
    :cond_3
    const-string v6, ","

    invoke-virtual {v5, v6}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto :goto_1

    .line 829
    :cond_4
    invoke-virtual {v5, v8}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/data/Contact;

    invoke-static {v6}, Lcom/android/mms/ui/MessageUtils;->canAddToContacts(Lcom/android/mms/data/Contact;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 830
    const/16 v6, 0xcb

    const v7, 0x7f090067

    invoke-interface {p1, v8, v6, v8, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_2
.end method
