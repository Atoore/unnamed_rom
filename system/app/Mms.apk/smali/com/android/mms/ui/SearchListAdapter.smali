.class public Lcom/android/mms/ui/SearchListAdapter;
.super Landroid/widget/CursorAdapter;
.source "SearchListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SearchListAdapter$OnContentChangedListener;
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mOnContentChangedListener:Lcom/android/mms/ui/SearchListAdapter$OnContentChangedListener;

.field private mSearchString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 31
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SearchListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 32
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 10
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 41
    const v8, 0x7f080044

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    move-object v0, v8

    check-cast v0, Landroid/widget/TextView;

    move-object v5, v0

    .line 42
    .local v5, title:Landroid/widget/TextView;
    const v8, 0x7f08008f

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;

    move-object v0, v8

    check-cast v0, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;

    move-object v4, v0

    .line 44
    .local v4, snippet:Lcom/android/mms/ui/SearchActivity$TextViewSnippet;
    const-string v8, "address"

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, address:Ljava/lang/String;
    const-string v8, "transport_type"

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 48
    .local v7, type:Ljava/lang/String;
    const-string v8, "wpm"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 49
    const v8, 0x7f09019f

    invoke-virtual {p2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 59
    :goto_0
    if-eqz v1, :cond_3

    move-object v6, v1

    .line 60
    .local v6, titleString:Ljava/lang/String;
    :goto_1
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    const-string v8, "text"

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/mms/ui/SearchListAdapter;->mSearchString:Ljava/lang/String;

    invoke-virtual {v4, v8, v9}, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void

    .line 52
    .end local v6           #titleString:Ljava/lang/String;
    :cond_0
    const-string v8, "recipient_ids"

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, recipient_ids:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 54
    const-string v2, ""

    .line 55
    :cond_1
    const/4 v8, 0x0

    invoke-static {v2, v8}, Lcom/android/mms/data/ContactList;->getByIds(Ljava/lang/String;Z)Lcom/android/mms/data/ContactList;

    move-result-object v3

    .line 56
    .local v3, recipients:Lcom/android/mms/data/ContactList;
    if-eqz v3, :cond_2

    const-string v8, ", "

    invoke-virtual {v3, v8}, Lcom/android/mms/data/ContactList;->formattedNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v1, v8

    :goto_2
    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    move-object v1, v8

    goto :goto_2

    .line 59
    .end local v2           #recipient_ids:Ljava/lang/String;
    .end local v3           #recipients:Lcom/android/mms/data/ContactList;
    :cond_3
    const-string v8, ""

    move-object v6, v8

    goto :goto_1
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/mms/ui/SearchListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030026

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onContentChanged()V
    .locals 2

    .prologue
    .line 76
    const-string v0, "Mms/SearchListAdapter"

    const-string v1, "SearchListAdapter.onContentChanged()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/android/mms/ui/SearchListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SearchListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/mms/ui/SearchListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/SearchListAdapter$OnContentChangedListener;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/mms/ui/SearchListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/SearchListAdapter$OnContentChangedListener;

    invoke-interface {v0, p0}, Lcom/android/mms/ui/SearchListAdapter$OnContentChangedListener;->onContentChanged(Lcom/android/mms/ui/SearchListAdapter;)V

    .line 83
    :cond_0
    return-void
.end method

.method public setOnContentChangedListener(Lcom/android/mms/ui/SearchListAdapter$OnContentChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/mms/ui/SearchListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/SearchListAdapter$OnContentChangedListener;

    .line 72
    return-void
.end method

.method public setSearchString(Ljava/lang/String;)V
    .locals 0
    .parameter "searchString"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/mms/ui/SearchListAdapter;->mSearchString:Ljava/lang/String;

    .line 87
    return-void
.end method
