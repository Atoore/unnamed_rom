.class public abstract Landroid/widget/CompoundButton;
.super Landroid/widget/Button;
.source "CompoundButton.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/CompoundButton$1;,
        Landroid/widget/CompoundButton$SavedState;,
        Landroid/widget/CompoundButton$OnCheckedChangeListener;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private mBroadcasting:Z

.field private mButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private mButtonResource:I

.field private mChecked:Z

.field private mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mOnCheckedChangeWidgetListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 60
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Landroid/widget/CompoundButton;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    sget-object v3, Lcom/android/internal/R$styleable;->CompoundButton:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 79
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 80
    .local v2, d:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_14

    .line 81
    invoke-virtual {p0, v2}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    :cond_14
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 86
    .local v1, checked:Z
    invoke-virtual {p0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 88
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 89
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 6
    .parameter "event"

    .prologue
    .line 226
    invoke-super {p0, p1}, Landroid/widget/Button;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 228
    .local v0, populated:Z
    if-nez v0, :cond_22

    .line 229
    const/4 v1, 0x0

    .line 230
    .local v1, resourceId:I
    iget-boolean v3, p0, Landroid/widget/CompoundButton;->mChecked:Z

    if-eqz v3, :cond_23

    .line 231
    const v1, 0x1040449

    .line 235
    :goto_e
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 236
    .local v2, state:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    iget-boolean v3, p0, Landroid/widget/CompoundButton;->mChecked:Z

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 240
    .end local v1           #resourceId:I
    .end local v2           #state:Ljava/lang/String;
    :cond_22
    return v0

    .line 233
    .restart local v1       #resourceId:I
    :cond_23
    const v1, 0x104044a

    goto :goto_e
.end method

.method protected drawableStateChanged()V
    .registers 3

    .prologue
    .line 279
    invoke-super {p0}, Landroid/widget/Button;->drawableStateChanged()V

    .line 281
    iget-object v1, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_13

    .line 282
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getDrawableState()[I

    move-result-object v0

    .line 285
    .local v0, myDrawableState:[I
    iget-object v1, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 287
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->invalidate()V

    .line 289
    .end local v0           #myDrawableState:[I
    :cond_13
    return-void
.end method

.method public isChecked()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 110
    iget-boolean v0, p0, Landroid/widget/CompoundButton;->mChecked:Z

    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .registers 4
    .parameter "extraSpace"

    .prologue
    .line 270
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/Button;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 271
    .local v0, drawableState:[I
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 272
    sget-object v1, Landroid/widget/CompoundButton;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/widget/CompoundButton;->mergeDrawableStates([I[I)[I

    .line 274
    :cond_11
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 9
    .parameter "canvas"

    .prologue
    .line 245
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 247
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 248
    .local v0, buttonDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_22

    .line 249
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getGravity()I

    move-result v4

    and-int/lit8 v2, v4, 0x70

    .line 250
    .local v2, verticalGravity:I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 252
    .local v1, height:I
    const/4 v3, 0x0

    .line 254
    .local v3, y:I
    sparse-switch v2, :sswitch_data_32

    .line 263
    :goto_15
    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int v6, v3, v1

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 264
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 266
    .end local v1           #height:I
    .end local v2           #verticalGravity:I
    .end local v3           #y:I
    :cond_22
    return-void

    .line 256
    .restart local v1       #height:I
    .restart local v2       #verticalGravity:I
    .restart local v3       #y:I
    :sswitch_23
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getHeight()I

    move-result v4

    sub-int v3, v4, v1

    .line 257
    goto :goto_15

    .line 259
    :sswitch_2a
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getHeight()I

    move-result v4

    sub-int/2addr v4, v1

    div-int/lit8 v3, v4, 0x2

    goto :goto_15

    .line 254
    :sswitch_data_32
    .sparse-switch
        0x10 -> :sswitch_2a
        0x50 -> :sswitch_23
    .end sparse-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5
    .parameter "state"

    .prologue
    .line 353
    move-object v0, p1

    check-cast v0, Landroid/widget/CompoundButton$SavedState;

    move-object v1, v0

    .line 355
    .local v1, ss:Landroid/widget/CompoundButton$SavedState;
    invoke-virtual {v1}, Landroid/widget/CompoundButton$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/widget/Button;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 356
    iget-boolean v2, v1, Landroid/widget/CompoundButton$SavedState;->checked:Z

    invoke-virtual {p0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 357
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->requestLayout()V

    .line 358
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .prologue
    .line 342
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/widget/CompoundButton;->setFreezesText(Z)V

    .line 343
    invoke-super {p0}, Landroid/widget/Button;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 345
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Landroid/widget/CompoundButton$SavedState;

    invoke-direct {v0, v1}, Landroid/widget/CompoundButton$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 347
    .local v0, ss:Landroid/widget/CompoundButton$SavedState;
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Landroid/widget/CompoundButton$SavedState;->checked:Z

    .line 348
    return-object v0
.end method

.method public performClick()Z
    .registers 2

    .prologue
    .line 104
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->toggle()V

    .line 105
    invoke-super {p0}, Landroid/widget/Button;->performClick()Z

    move-result v0

    return v0
.end method

.method public setButtonDrawable(I)V
    .registers 5
    .parameter "resid"

    .prologue
    .line 189
    if-eqz p1, :cond_7

    iget v1, p0, Landroid/widget/CompoundButton;->mButtonResource:I

    if-ne p1, v1, :cond_7

    .line 200
    :goto_6
    return-void

    .line 193
    :cond_7
    iput p1, p0, Landroid/widget/CompoundButton;->mButtonResource:I

    .line 195
    const/4 v0, 0x0

    .line 196
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget v1, p0, Landroid/widget/CompoundButton;->mButtonResource:I

    if-eqz v1, :cond_18

    .line 197
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Landroid/widget/CompoundButton;->mButtonResource:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 199
    :cond_18
    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .parameter "d"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 208
    if-eqz p1, :cond_36

    .line 209
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_12

    .line 210
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 211
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 213
    :cond_12
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 214
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 215
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3a

    const/4 v0, 0x1

    :goto_23
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 216
    iput-object p1, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 217
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 218
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setMinHeight(I)V

    .line 221
    :cond_36
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->refreshDrawableState()V

    .line 222
    return-void

    :cond_3a
    move v0, v1

    .line 215
    goto :goto_23
.end method

.method public setChecked(Z)V
    .registers 5
    .parameter "checked"

    .prologue
    .line 119
    iget-boolean v0, p0, Landroid/widget/CompoundButton;->mChecked:Z

    if-eq v0, p1, :cond_d

    .line 120
    iput-boolean p1, p0, Landroid/widget/CompoundButton;->mChecked:Z

    .line 121
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->refreshDrawableState()V

    .line 124
    iget-boolean v0, p0, Landroid/widget/CompoundButton;->mBroadcasting:Z

    if-eqz v0, :cond_e

    .line 146
    :cond_d
    :goto_d
    return-void

    .line 130
    :cond_e
    const-string/jumbo v0, "service.gate.enabled"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 131
    const-string v0, "GATE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<GATE-M>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/widget/CompoundButton;->mChecked:Z

    if-eqz v2, :cond_5e

    const-string v2, "CHECKED"

    :goto_30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</GATE-M>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_41
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/CompoundButton;->mBroadcasting:Z

    .line 137
    iget-object v0, p0, Landroid/widget/CompoundButton;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v0, :cond_4f

    .line 138
    iget-object v0, p0, Landroid/widget/CompoundButton;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    iget-boolean v1, p0, Landroid/widget/CompoundButton;->mChecked:Z

    invoke-interface {v0, p0, v1}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 140
    :cond_4f
    iget-object v0, p0, Landroid/widget/CompoundButton;->mOnCheckedChangeWidgetListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v0, :cond_5a

    .line 141
    iget-object v0, p0, Landroid/widget/CompoundButton;->mOnCheckedChangeWidgetListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    iget-boolean v1, p0, Landroid/widget/CompoundButton;->mChecked:Z

    invoke-interface {v0, p0, v1}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 144
    :cond_5a
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/CompoundButton;->mBroadcasting:Z

    goto :goto_d

    .line 131
    :cond_5e
    const-string v2, ""

    goto :goto_30
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 155
    iput-object p1, p0, Landroid/widget/CompoundButton;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 156
    return-void
.end method

.method setOnCheckedChangeWidgetListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 166
    iput-object p1, p0, Landroid/widget/CompoundButton;->mOnCheckedChangeWidgetListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 167
    return-void
.end method

.method public toggle()V
    .registers 2

    .prologue
    .line 92
    iget-boolean v0, p0, Landroid/widget/CompoundButton;->mChecked:Z

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 93
    return-void

    .line 92
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .parameter "who"

    .prologue
    .line 293
    invoke-super {p0, p1}, Landroid/widget/Button;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
