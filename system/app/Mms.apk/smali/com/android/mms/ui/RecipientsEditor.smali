.class public Lcom/android/mms/ui/RecipientsEditor;
.super Landroid/widget/AutoCompleteTextView;
.source "RecipientsEditor.java"


# instance fields
.field private mComposer:Lcom/android/mms/ui/ComposeMessage;

.field private mRecipients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 59
    const v0, 0x101006b

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/RecipientsEditor;->setImeOptions(I)V

    .line 62
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/RecipientsEditor;->setThreshold(I)V

    .line 73
    new-instance v0, Lcom/android/mms/ui/RecipientsEditor$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/RecipientsEditor$1;-><init>(Lcom/android/mms/ui/RecipientsEditor;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/RecipientsEditor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 88
    new-instance v0, Lcom/android/mms/ui/RecipientsEditor$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/RecipientsEditor$2;-><init>(Lcom/android/mms/ui/RecipientsEditor;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/RecipientsEditor;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/RecipientsEditor;->mRecipients:Ljava/util/List;

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/RecipientsEditor;)Lcom/android/mms/ui/ComposeMessage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsEditor;->mComposer:Lcom/android/mms/ui/ComposeMessage;

    return-object v0
.end method

.method private isValidAddress(Ljava/lang/String;Z)Z
    .locals 2
    .parameter "number"
    .parameter "isMms"

    .prologue
    .line 153
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    .line 154
    if-eqz p2, :cond_0

    .line 155
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->isValidMmsAddress(Ljava/lang/String;)Z

    move-result v0

    .line 166
    :goto_0
    return v0

    .line 163
    :cond_0
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->isValidSmsAddress(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 166
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public constructContactsFromInput()Lcom/android/mms/data/ContactList;
    .locals 7

    .prologue
    .line 114
    const-string v4, "Mms/compose"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "constructContactsFromInput numbers= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/RecipientsEditor;->mRecipients:Ljava/util/List;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    new-instance v2, Lcom/android/mms/data/ContactList;

    invoke-direct {v2}, Lcom/android/mms/data/ContactList;-><init>()V

    .line 117
    .local v2, list:Lcom/android/mms/data/ContactList;
    iget-object v4, p0, Lcom/android/mms/ui/RecipientsEditor;->mRecipients:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 118
    .local v3, number:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 120
    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->isNameAndNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 121
    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->extractNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 123
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 124
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 125
    .local v0, contact:Lcom/android/mms/data/Contact;
    invoke-virtual {v0, v3}, Lcom/android/mms/data/Contact;->setNumber(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v2, v0}, Lcom/android/mms/data/ContactList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 130
    .end local v0           #contact:Lcom/android/mms/data/Contact;
    .end local v3           #number:Ljava/lang/String;
    :cond_2
    return-object v2
.end method

.method public constructContactsFromValidRecipients(Z)Lcom/android/mms/data/ContactList;
    .locals 5
    .parameter "isMms"

    .prologue
    .line 134
    new-instance v2, Lcom/android/mms/data/ContactList;

    invoke-direct {v2}, Lcom/android/mms/data/ContactList;-><init>()V

    .line 136
    .local v2, list:Lcom/android/mms/data/ContactList;
    iget-object v4, p0, Lcom/android/mms/ui/RecipientsEditor;->mRecipients:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 137
    .local v3, number:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 140
    invoke-direct {p0, v3, p1}, Lcom/android/mms/ui/RecipientsEditor;->isValidAddress(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 143
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 144
    .local v0, contact:Lcom/android/mms/data/Contact;
    invoke-virtual {v0, v3}, Lcom/android/mms/data/Contact;->setNumber(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v2, v0}, Lcom/android/mms/data/ContactList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 148
    .end local v0           #contact:Lcom/android/mms/data/Contact;
    .end local v3           #number:Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method public containsEmail()Z
    .locals 3

    .prologue
    .line 204
    iget-object v2, p0, Lcom/android/mms/ui/RecipientsEditor;->mRecipients:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 205
    .local v1, number:Ljava/lang/String;
    invoke-static {v1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 206
    const/4 v2, 0x1

    .line 208
    .end local v1           #number:Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public formatInvalidNumbers(Z)Ljava/lang/String;
    .locals 4
    .parameter "isMms"

    .prologue
    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .local v2, sb:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/mms/ui/RecipientsEditor;->mRecipients:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 193
    .local v1, number:Ljava/lang/String;
    invoke-direct {p0, v1, p1}, Lcom/android/mms/ui/RecipientsEditor;->isValidAddress(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 194
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 195
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 200
    .end local v1           #number:Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getRecipientCount()I
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsEditor;->mRecipients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public hasInvalidRecipient(Z)Z
    .locals 4
    .parameter "isMms"

    .prologue
    const/4 v3, 0x1

    .line 178
    iget-object v2, p0, Lcom/android/mms/ui/RecipientsEditor;->mRecipients:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 179
    .local v1, number:Ljava/lang/String;
    invoke-direct {p0, v1, p1}, Lcom/android/mms/ui/RecipientsEditor;->isValidAddress(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 180
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v3

    .line 187
    .end local v1           #number:Ljava/lang/String;
    :goto_0
    return v2

    .line 182
    .restart local v1       #number:Ljava/lang/String;
    :cond_1
    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    .line 183
    goto :goto_0

    .line 187
    .end local v1           #number:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hasValidRecipient(Z)Z
    .locals 3
    .parameter "isMms"

    .prologue
    .line 170
    iget-object v2, p0, Lcom/android/mms/ui/RecipientsEditor;->mRecipients:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 171
    .local v1, number:Ljava/lang/String;
    invoke-direct {p0, v1, p1}, Lcom/android/mms/ui/RecipientsEditor;->isValidAddress(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    const/4 v2, 0x1

    .line 174
    .end local v1           #number:Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public moveCursorToEnd()V
    .locals 2

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 267
    return-void
.end method

.method public onFilterComplete(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 285
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onFilterComplete(I)V

    .line 286
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 287
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientsEditor;->requestLayout()V

    .line 288
    return-void
.end method

.method public setComposer(Lcom/android/mms/ui/ComposeMessage;)V
    .locals 0
    .parameter "composer"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/mms/ui/RecipientsEditor;->mComposer:Lcom/android/mms/ui/ComposeMessage;

    .line 102
    return-void
.end method

.method public setRecipients([Ljava/lang/String;)V
    .locals 5
    .parameter "recipients"

    .prologue
    .line 254
    iget-object v4, p0, Lcom/android/mms/ui/RecipientsEditor;->mRecipients:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 256
    if-nez p1, :cond_1

    .line 263
    :cond_0
    return-void

    .line 259
    :cond_1
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 260
    .local v3, recipient:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/mms/data/Contact;->replaceInvalidPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 261
    iget-object v4, p0, Lcom/android/mms/ui/RecipientsEditor;->mRecipients:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setRecipientsInEditor()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 270
    iget-object v2, p0, Lcom/android/mms/ui/RecipientsEditor;->mRecipients:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 272
    .local v1, recipientcount:I
    if-lez v1, :cond_1

    .line 273
    iget-object v2, p0, Lcom/android/mms/ui/RecipientsEditor;->mRecipients:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/android/mms/data/Contact;->getContactName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, name:Ljava/lang/String;
    if-ne v1, v7, :cond_0

    .line 276
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/RecipientsEditor;->setText(Ljava/lang/CharSequence;)V

    .line 282
    .end local v0           #name:Ljava/lang/String;
    :goto_0
    return-void

    .line 278
    .restart local v0       #name:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/RecipientsEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0003

    sub-int v4, v1, v7

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    sub-int v6, v1, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/RecipientsEditor;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 281
    .end local v0           #name:Ljava/lang/String;
    :cond_1
    const-string v2, ""

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/RecipientsEditor;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
