.class public Lcom/android/mms/ui/AttachmentListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AttachmentListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/mms/model/AttachmentModel;",
        ">;",
        "Landroid/widget/CompoundButton$OnCheckedChangeListener;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private mCheckStates:Landroid/util/SparseBooleanArray;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mNumberOfAttachments:I

.field private final mResource:I

.field private mSaveButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 2
    .parameter "context"
    .parameter "resource"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p3, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mSaveButton:Landroid/widget/Button;

    .line 38
    iput p2, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mResource:I

    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 40
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 41
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mNumberOfAttachments:I

    .line 42
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    .line 64
    if-nez p2, :cond_0

    .line 65
    iget-object v3, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v4, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mResource:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 68
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/AttachmentListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/AttachmentModel;

    .line 69
    .local v0, attachment:Lcom/android/mms/model/AttachmentModel;
    const v3, 0x7f080002

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 70
    .local v2, text:Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/android/mms/model/AttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 72
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 74
    const v3, 0x7f080001

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 85
    .local v1, checkBox:Landroid/widget/CheckBox;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 86
    iget-object v3, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1, v6}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 87
    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 89
    new-instance v3, Lcom/android/mms/ui/AttachmentListAdapter$1;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/AttachmentListAdapter$1;-><init>(Lcom/android/mms/ui/AttachmentListAdapter;)V

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    invoke-virtual {p2, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 95
    invoke-virtual {p2, v6}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 96
    const v3, 0x1080062

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 98
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 100
    return-object p2
.end method

.method public isChecked(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 119
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_0

    .line 120
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 125
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mSaveButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 126
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    iget v1, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mNumberOfAttachments:I

    if-ge v0, v1, :cond_2

    .line 127
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/AttachmentListAdapter;->isChecked(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mSaveButton:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 135
    .end local v0           #index:I
    :cond_0
    :goto_1
    return-void

    .line 126
    .restart local v0       #index:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mSaveButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 138
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/AttachmentListAdapter;->toggle(I)V

    .line 139
    return-void
.end method

.method public setChecked(IZ)V
    .locals 1
    .parameter "position"
    .parameter "isChecked"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 110
    invoke-virtual {p0}, Lcom/android/mms/ui/AttachmentListAdapter;->notifyDataSetChanged()V

    .line 112
    :cond_0
    return-void
.end method

.method public setSaveButton(Landroid/widget/Button;)V
    .locals 2
    .parameter "bt"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mSaveButton:Landroid/widget/Button;

    .line 144
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentListAdapter;->mSaveButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 145
    return-void
.end method

.method public toggle(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/AttachmentListAdapter;->isChecked(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/mms/ui/AttachmentListAdapter;->setChecked(IZ)V

    .line 116
    return-void

    .line 115
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
