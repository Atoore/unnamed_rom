.class Lcom/android/mms/ui/SearchActivity$2;
.super Landroid/content/AsyncQueryHandler;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SearchActivity;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SearchActivity;Landroid/content/ContentResolver;Landroid/widget/ListView;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    iput-object p3, p0, Lcom/android/mms/ui/SearchActivity$2;->val$listView:Landroid/widget/ListView;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 11
    .parameter "token"
    .parameter "cookie"
    .parameter "c"

    .prologue
    const/16 v4, 0x1e

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 273
    if-nez p3, :cond_1

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 279
    .local v0, cursorCount:I
    iget-object v3, p0, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    invoke-static {v3}, Lcom/android/mms/ui/SearchActivity;->access$100(Lcom/android/mms/ui/SearchActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    invoke-static {v3}, Lcom/android/mms/ui/SearchActivity;->access$100(Lcom/android/mms/ui/SearchActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 281
    .local v2, titleString:Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    iget-object v4, p0, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    invoke-virtual {v4}, Lcom/android/mms/ui/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0001

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    aput-object v2, v6, v8

    invoke-virtual {v4, v5, v0, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/SearchActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v3, p0, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    invoke-static {v3}, Lcom/android/mms/ui/SearchActivity;->access$200(Lcom/android/mms/ui/SearchActivity;)Lcom/android/mms/ui/SearchListAdapter;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/android/mms/ui/SearchListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 286
    iget-object v3, p0, Lcom/android/mms/ui/SearchActivity$2;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v3, v8}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 287
    iget-object v3, p0, Lcom/android/mms/ui/SearchActivity$2;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v3, v8}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 288
    iget-object v3, p0, Lcom/android/mms/ui/SearchActivity$2;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->requestFocus()Z

    .line 291
    if-lez v0, :cond_0

    .line 292
    iget-object v3, p0, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    invoke-virtual {v3}, Lcom/android/mms/ui/SearchActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Lcom/android/mms/MmsApp;

    invoke-virtual {v3}, Lcom/android/mms/MmsApp;->getRecentSuggestions()Landroid/provider/SearchRecentSuggestions;

    move-result-object v1

    .line 294
    .local v1, recent:Landroid/provider/SearchRecentSuggestions;
    if-eqz v1, :cond_0

    .line 295
    iget-object v3, p0, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    invoke-static {v3}, Lcom/android/mms/ui/SearchActivity;->access$100(Lcom/android/mms/ui/SearchActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    const v5, 0x7f0900fe

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    iget-object v7, p0, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    invoke-static {v7}, Lcom/android/mms/ui/SearchActivity;->access$100(Lcom/android/mms/ui/SearchActivity;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Lcom/android/mms/ui/SearchActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/provider/SearchRecentSuggestions;->saveRecentQuery(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 279
    .end local v1           #recent:Landroid/provider/SearchRecentSuggestions;
    .end local v2           #titleString:Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/SearchActivity$2;->this$0:Lcom/android/mms/ui/SearchActivity;

    invoke-static {v3}, Lcom/android/mms/ui/SearchActivity;->access$100(Lcom/android/mms/ui/SearchActivity;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    goto :goto_1
.end method
