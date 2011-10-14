.class public Landroid/widget/DatePicker;
.super Landroid/widget/FrameLayout;
.source "DatePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DatePicker$TwTextWatcher;,
        Landroid/widget/DatePicker$TwKeyListener;,
        Landroid/widget/DatePicker$SavedState;,
        Landroid/widget/DatePicker$OnDateChangedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_END_YEAR:I = 0x834

.field private static final DEFAULT_START_YEAR:I = 0x76c

.field private static final NUMBER_OF_MONTHS:I = 0xc

.field private static final TW_DEBUG:Z


# instance fields
.field private final FORMAT_DDMMYYYY:I

.field private final FORMAT_MMDDYYYY:I

.field private final FORMAT_YYYYMMDD:I

.field private final PICKER_DAY:I

.field private final PICKER_MONTH:I

.field private final PICKER_YEAR:I

.field private isMonthJan:Z

.field private isNumMonth:Z

.field private isP1KOR:Z

.field private mDateFormat:I

.field private mDay:I

.field private final mDayPicker:Landroid/widget/NumberPicker;

.field private mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private mMonth:I

.field mMonthEdit:Landroid/widget/EditText;

.field private volatile mMonthLocale:Ljava/util/Locale;

.field private final mMonthPicker:Landroid/widget/NumberPicker;

.field private mMonthUpdateLock:Ljava/lang/Object;

.field private mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

.field private mPickerTexts:[Landroid/widget/EditText;

.field private mShortMonths:[Ljava/lang/String;

.field private mYear:I

.field private final mYearPicker:Landroid/widget/NumberPicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 15
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 129
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    new-instance v7, Ljava/lang/Object;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object v7, p0, Landroid/widget/DatePicker;->mMonthUpdateLock:Ljava/lang/Object;

    .line 103
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/DatePicker;->isP1KOR:Z

    .line 560
    const/4 v7, 0x3

    new-array v7, v7, [Landroid/widget/EditText;

    iput-object v7, p0, Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    .line 562
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/DatePicker;->isNumMonth:Z

    .line 563
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/DatePicker;->isMonthJan:Z

    .line 565
    const/4 v7, 0x0

    iput v7, p0, Landroid/widget/DatePicker;->PICKER_DAY:I

    .line 566
    const/4 v7, 0x1

    iput v7, p0, Landroid/widget/DatePicker;->PICKER_MONTH:I

    .line 567
    const/4 v7, 0x2

    iput v7, p0, Landroid/widget/DatePicker;->PICKER_YEAR:I

    .line 569
    const/4 v7, 0x0

    iput v7, p0, Landroid/widget/DatePicker;->FORMAT_MMDDYYYY:I

    .line 570
    const/4 v7, 0x1

    iput v7, p0, Landroid/widget/DatePicker;->FORMAT_DDMMYYYY:I

    .line 571
    const/4 v7, 0x2

    iput v7, p0, Landroid/widget/DatePicker;->FORMAT_YYYYMMDD:I

    .line 580
    new-instance v7, Landroid/widget/DatePicker$4;

    invoke-direct {v7, p0}, Landroid/widget/DatePicker$4;-><init>(Landroid/widget/DatePicker;)V

    iput-object v7, p0, Landroid/widget/DatePicker;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 131
    const-string v7, "layout_inflater"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 132
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v7, 0x1090022

    const/4 v8, 0x1

    invoke-virtual {v3, v7, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 134
    const v7, 0x10201b8

    invoke-virtual {p0, v7}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .end local p3
    check-cast p3, Landroid/widget/NumberPicker;

    iput-object p3, p0, Landroid/widget/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    .line 141
    iget-object v7, p0, Landroid/widget/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/widget/NumberPicker;->twSetMaxInputLength(I)V

    .line 143
    iget-object v7, p0, Landroid/widget/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    sget-object v8, Landroid/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Landroid/widget/NumberPicker$Formatter;

    invoke-virtual {v7, v8}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 144
    iget-object v7, p0, Landroid/widget/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    const-wide/16 v8, 0x64

    invoke-virtual {v7, v8, v9}, Landroid/widget/NumberPicker;->setSpeed(J)V

    .line 145
    iget-object v7, p0, Landroid/widget/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    new-instance v8, Landroid/widget/DatePicker$1;

    invoke-direct {v8, p0}, Landroid/widget/DatePicker$1;-><init>(Landroid/widget/DatePicker;)V

    invoke-virtual {v7, v8}, Landroid/widget/NumberPicker;->setOnChangeListener(Landroid/widget/NumberPicker$OnChangedListener;)V

    .line 151
    const v7, 0x10201b7

    invoke-virtual {p0, v7}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/NumberPicker;

    iput-object p3, p0, Landroid/widget/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    .line 160
    iget-object v7, p0, Landroid/widget/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/DatePicker;->mMonthEdit:Landroid/widget/EditText;

    .line 163
    iget-object v7, p0, Landroid/widget/DatePicker;->mMonthEdit:Landroid/widget/EditText;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setInputType(I)V

    .line 169
    iget-object v7, p0, Landroid/widget/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7}, Landroid/widget/NumberPicker;->twSetMonthInputMode()V

    .line 177
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/DatePicker;->isP1KOR:Z

    .line 180
    iget-object v7, p0, Landroid/widget/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    sget-object v8, Landroid/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Landroid/widget/NumberPicker$Formatter;

    invoke-virtual {v7, v8}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 181
    invoke-direct {p0}, Landroid/widget/DatePicker;->getShortMonths()[Ljava/lang/String;

    move-result-object v6

    .line 188
    .local v6, months:[Ljava/lang/String;
    iget-boolean v7, p0, Landroid/widget/DatePicker;->isP1KOR:Z

    if-eqz v7, :cond_12d

    .line 189
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/DatePicker;->isNumMonth:Z

    .line 190
    const/4 v2, 0x0

    .local v2, i:I
    :goto_9d
    array-length v7, v6

    if-ge v2, v7, :cond_ab

    .line 191
    add-int/lit8 v7, v2, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    .line 190
    add-int/lit8 v2, v2, 0x1

    goto :goto_9d

    .line 193
    :cond_ab
    iget-object v7, p0, Landroid/widget/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/NumberPicker;->setStringMode(Z)V

    .line 195
    iget-object v7, p0, Landroid/widget/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    const/4 v8, 0x1

    const/16 v9, 0xc

    invoke-virtual {v7, v8, v9}, Landroid/widget/NumberPicker;->setRange(II)V

    .line 212
    .end local v2           #i:I
    :goto_b9
    iget-object v7, p0, Landroid/widget/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    const-wide/16 v8, 0xc8

    invoke-virtual {v7, v8, v9}, Landroid/widget/NumberPicker;->setSpeed(J)V

    .line 213
    iget-object v7, p0, Landroid/widget/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    new-instance v8, Landroid/widget/DatePicker$2;

    invoke-direct {v8, p0}, Landroid/widget/DatePicker$2;-><init>(Landroid/widget/DatePicker;)V

    invoke-virtual {v7, v8}, Landroid/widget/NumberPicker;->setOnChangeListener(Landroid/widget/NumberPicker$OnChangedListener;)V

    .line 226
    const v7, 0x10201b9

    invoke-virtual {p0, v7}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/NumberPicker;

    iput-object p3, p0, Landroid/widget/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    .line 227
    iget-object v7, p0, Landroid/widget/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/NumberPicker;->twSetMaxInputLength(I)V

    .line 228
    iget-object v7, p0, Landroid/widget/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    const-wide/16 v8, 0x64

    invoke-virtual {v7, v8, v9}, Landroid/widget/NumberPicker;->setSpeed(J)V

    .line 229
    iget-object v7, p0, Landroid/widget/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    new-instance v8, Landroid/widget/DatePicker$3;

    invoke-direct {v8, p0}, Landroid/widget/DatePicker$3;-><init>(Landroid/widget/DatePicker;)V

    invoke-virtual {v7, v8}, Landroid/widget/NumberPicker;->setOnChangeListener(Landroid/widget/NumberPicker$OnChangedListener;)V

    .line 240
    sget-object v7, Lcom/android/internal/R$styleable;->DatePicker:[I

    invoke-virtual {p1, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 242
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v7, 0x0

    const/16 v8, 0x76c

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 243
    .local v5, mStartYear:I
    const/4 v7, 0x1

    const/16 v8, 0x834

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 244
    .local v4, mEndYear:I
    iget-object v7, p0, Landroid/widget/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7, v5, v4}, Landroid/widget/NumberPicker;->setRange(II)V

    .line 246
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 249
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 250
    .local v1, cal:Ljava/util/Calendar;
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v8, 0x2

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x5

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {p0, v7, v8, v9, v10}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 253
    invoke-direct {p0, v6}, Landroid/widget/DatePicker;->reorderPickers([Ljava/lang/String;)V

    .line 255
    invoke-virtual {p0}, Landroid/widget/DatePicker;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_12c

    .line 256
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Landroid/widget/DatePicker;->setEnabled(Z)V

    .line 258
    :cond_12c
    return-void

    .line 197
    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v1           #cal:Ljava/util/Calendar;
    .end local v4           #mEndYear:I
    .end local v5           #mStartYear:I
    :cond_12d
    const/4 v7, 0x0

    aget-object v7, v6, v7

    const-string v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_15a

    .line 198
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_139
    array-length v7, v6

    if-ge v2, v7, :cond_147

    .line 199
    add-int/lit8 v7, v2, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    .line 198
    add-int/lit8 v2, v2, 0x1

    goto :goto_139

    .line 201
    :cond_147
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/DatePicker;->isNumMonth:Z

    .line 202
    iget-object v7, p0, Landroid/widget/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    const/4 v8, 0x1

    const/16 v9, 0xc

    invoke-virtual {v7, v8, v9}, Landroid/widget/NumberPicker;->setRange(II)V

    .line 203
    iget-object v7, p0, Landroid/widget/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/NumberPicker;->setStringMode(Z)V

    goto/16 :goto_b9

    .line 205
    .end local v2           #i:I
    :cond_15a
    iget-object v7, p0, Landroid/widget/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/NumberPicker;->setStringMode(Z)V

    .line 206
    const-string v7, "DatePicker"

    const-string/jumbo v8, "set months"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v7, p0, Landroid/widget/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    const/4 v8, 0x1

    const/16 v9, 0xc

    invoke-virtual {v7, v8, v9, v6}, Landroid/widget/NumberPicker;->setRange(II[Ljava/lang/String;)V

    goto/16 :goto_b9
.end method

.method static synthetic access$002(Landroid/widget/DatePicker;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput p1, p0, Landroid/widget/DatePicker;->mDay:I

    return p1
.end method

.method static synthetic access$100(Landroid/widget/DatePicker;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/widget/DatePicker;->notifyDateChanged()V

    return-void
.end method

.method static synthetic access$1000(Landroid/widget/DatePicker;)[Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/widget/DatePicker;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Landroid/widget/DatePicker;->isNumMonth:Z

    return v0
.end method

.method static synthetic access$202(Landroid/widget/DatePicker;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput p1, p0, Landroid/widget/DatePicker;->mMonth:I

    return p1
.end method

.method static synthetic access$300(Landroid/widget/DatePicker;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/widget/DatePicker;->adjustMaxDay()V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/DatePicker;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateDaySpinner()V

    return-void
.end method

.method static synthetic access$502(Landroid/widget/DatePicker;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput p1, p0, Landroid/widget/DatePicker;->mYear:I

    return p1
.end method

.method static synthetic access$800(Landroid/widget/DatePicker;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/widget/DatePicker;->twLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Landroid/widget/DatePicker;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Landroid/widget/DatePicker;->isMonthJan:Z

    return v0
.end method

.method static synthetic access$902(Landroid/widget/DatePicker;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Landroid/widget/DatePicker;->isMonthJan:Z

    return p1
.end method

.method private adjustMaxDay()V
    .registers 3

    .prologue
    .line 540
    invoke-virtual {p0}, Landroid/widget/DatePicker;->getMaxDayOfMonth()I

    move-result v0

    .line 542
    .local v0, max:I
    iget v1, p0, Landroid/widget/DatePicker;->mDay:I

    if-le v1, v0, :cond_a

    .line 543
    iput v0, p0, Landroid/widget/DatePicker;->mDay:I

    .line 545
    :cond_a
    return-void
.end method

.method private getShortMonths()[Ljava/lang/String;
    .registers 8

    .prologue
    const/16 v6, 0xc

    .line 375
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 376
    .local v0, currentLocale:Ljava/util/Locale;
    iget-object v2, p0, Landroid/widget/DatePicker;->mMonthLocale:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, p0, Landroid/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    if-eqz v2, :cond_15

    .line 377
    iget-object v2, p0, Landroid/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    .line 389
    :goto_14
    return-object v2

    .line 379
    :cond_15
    iget-object v2, p0, Landroid/widget/DatePicker;->mMonthUpdateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 380
    :try_start_18
    iget-object v3, p0, Landroid/widget/DatePicker;->mMonthLocale:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3a

    .line 381
    const/16 v3, 0xc

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Landroid/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    .line 382
    const/4 v1, 0x0

    .local v1, i:I
    :goto_27
    if-ge v1, v6, :cond_38

    .line 383
    iget-object v3, p0, Landroid/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    add-int/lit8 v4, v1, 0x0

    const/16 v5, 0x14

    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 382
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 386
    :cond_38
    iput-object v0, p0, Landroid/widget/DatePicker;->mMonthLocale:Ljava/util/Locale;

    .line 388
    .end local v1           #i:I
    :cond_3a
    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_18 .. :try_end_3b} :catchall_3e

    .line 389
    iget-object v2, p0, Landroid/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    goto :goto_14

    .line 388
    :catchall_3e
    move-exception v3

    :try_start_3f
    monitor-exit v2
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v3
.end method

.method private notifyDateChanged()V
    .registers 5

    .prologue
    .line 548
    iget-object v0, p0, Landroid/widget/DatePicker;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    if-eqz v0, :cond_f

    .line 549
    iget-object v0, p0, Landroid/widget/DatePicker;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    iget v1, p0, Landroid/widget/DatePicker;->mYear:I

    iget v2, p0, Landroid/widget/DatePicker;->mMonth:I

    iget v3, p0, Landroid/widget/DatePicker;->mDay:I

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/widget/DatePicker$OnDateChangedListener;->onDateChanged(Landroid/widget/DatePicker;III)V

    .line 551
    :cond_f
    return-void
.end method

.method private reorderPickers([Ljava/lang/String;)V
    .registers 12
    .parameter "months"

    .prologue
    .line 295
    invoke-virtual {p0}, Landroid/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    .line 297
    .local v4, format:Ljava/text/DateFormat;
    instance-of v9, v4, Ljava/text/SimpleDateFormat;

    if-eqz v9, :cond_46

    .line 298
    check-cast v4, Ljava/text/SimpleDateFormat;

    .end local v4           #format:Ljava/text/DateFormat;
    invoke-virtual {v4}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v6

    .line 307
    .local v6, order:Ljava/lang/String;
    :goto_12
    const v9, 0x10201b6

    invoke-virtual {p0, v9}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 308
    .local v7, parent:Landroid/widget/LinearLayout;
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 310
    const/4 v8, 0x0

    .line 311
    .local v8, quoted:Z
    const/4 v1, 0x0

    .local v1, didDay:Z
    const/4 v2, 0x0

    .local v2, didMonth:Z
    const/4 v3, 0x0

    .line 313
    .local v3, didYear:Z
    const/4 v5, 0x0

    .local v5, i:I
    :goto_23
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v5, v9, :cond_75

    .line 314
    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 316
    .local v0, c:C
    const/16 v9, 0x27

    if-ne v0, v9, :cond_35

    .line 317
    if-nez v8, :cond_54

    const/4 v9, 0x1

    move v8, v9

    .line 320
    :cond_35
    :goto_35
    if-nez v8, :cond_43

    .line 321
    const/16 v9, 0x64

    if-ne v0, v9, :cond_57

    if-nez v1, :cond_57

    .line 322
    iget-object v9, p0, Landroid/widget/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 323
    const/4 v1, 0x1

    .line 313
    :cond_43
    :goto_43
    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    .line 301
    .end local v0           #c:C
    .end local v1           #didDay:Z
    .end local v2           #didMonth:Z
    .end local v3           #didYear:Z
    .end local v5           #i:I
    .end local v6           #order:Ljava/lang/String;
    .end local v7           #parent:Landroid/widget/LinearLayout;
    .end local v8           #quoted:Z
    .restart local v4       #format:Ljava/text/DateFormat;
    :cond_46
    new-instance v6, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/lang/String;-><init>([C)V

    .restart local v6       #order:Ljava/lang/String;
    goto :goto_12

    .line 317
    .end local v4           #format:Ljava/text/DateFormat;
    .restart local v0       #c:C
    .restart local v1       #didDay:Z
    .restart local v2       #didMonth:Z
    .restart local v3       #didYear:Z
    .restart local v5       #i:I
    .restart local v7       #parent:Landroid/widget/LinearLayout;
    .restart local v8       #quoted:Z
    :cond_54
    const/4 v9, 0x0

    move v8, v9

    goto :goto_35

    .line 324
    :cond_57
    const/16 v9, 0x4d

    if-eq v0, v9, :cond_5f

    const/16 v9, 0x4c

    if-ne v0, v9, :cond_68

    :cond_5f
    if-nez v2, :cond_68

    .line 325
    iget-object v9, p0, Landroid/widget/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 326
    const/4 v2, 0x1

    goto :goto_43

    .line 327
    :cond_68
    const/16 v9, 0x79

    if-ne v0, v9, :cond_43

    if-nez v3, :cond_43

    .line 328
    iget-object v9, p0, Landroid/widget/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 329
    const/4 v3, 0x1

    goto :goto_43

    .line 335
    .end local v0           #c:C
    :cond_75
    if-nez v2, :cond_7c

    .line 336
    iget-object v9, p0, Landroid/widget/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 338
    :cond_7c
    if-nez v1, :cond_83

    .line 339
    iget-object v9, p0, Landroid/widget/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 341
    :cond_83
    if-nez v3, :cond_8a

    .line 342
    iget-object v9, p0, Landroid/widget/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 351
    :cond_8a
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/DatePicker;->mDateFormat:I

    .line 352
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 353
    .restart local v0       #c:C
    const/16 v9, 0x4d

    if-ne v0, v9, :cond_9f

    .line 354
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/DatePicker;->mDateFormat:I

    .line 360
    :cond_99
    :goto_99
    iget v9, p0, Landroid/widget/DatePicker;->mDateFormat:I

    invoke-direct {p0, v9}, Landroid/widget/DatePicker;->setTextWatcher(I)V

    .line 361
    return-void

    .line 355
    :cond_9f
    const/16 v9, 0x64

    if-ne v0, v9, :cond_a7

    .line 356
    const/4 v9, 0x1

    iput v9, p0, Landroid/widget/DatePicker;->mDateFormat:I

    goto :goto_99

    .line 357
    :cond_a7
    const/16 v9, 0x79

    if-ne v0, v9, :cond_99

    .line 358
    const/4 v9, 0x2

    iput v9, p0, Landroid/widget/DatePicker;->mDateFormat:I

    goto :goto_99
.end method

.method private setTextWatcher(I)V
    .registers 9
    .parameter "format"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 593
    packed-switch p1, :pswitch_data_146

    .line 641
    :goto_8
    iget-object v0, p0, Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Landroid/widget/DatePicker$TwKeyListener;

    invoke-direct {v1, p0, v2}, Landroid/widget/DatePicker$TwKeyListener;-><init>(Landroid/widget/DatePicker;I)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 642
    iget-object v0, p0, Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Landroid/widget/DatePicker$TwKeyListener;

    invoke-direct {v1, p0, v4}, Landroid/widget/DatePicker$TwKeyListener;-><init>(Landroid/widget/DatePicker;I)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 643
    iget-object v0, p0, Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v4

    new-instance v1, Landroid/widget/DatePicker$TwKeyListener;

    invoke-direct {v1, p0, v3}, Landroid/widget/DatePicker$TwKeyListener;-><init>(Landroid/widget/DatePicker;I)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 644
    return-void

    .line 595
    :pswitch_2d
    iget-object v0, p0, Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v3

    .line 596
    iget-object v0, p0, Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v2

    .line 597
    iget-object v0, p0, Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v4

    .line 599
    iget-boolean v0, p0, Landroid/widget/DatePicker;->isNumMonth:Z

    if-eqz v0, :cond_7d

    .line 600
    iget-object v0, p0, Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Landroid/widget/DatePicker$TwTextWatcher;

    invoke-direct {v1, p0, v4, v3, v2}, Landroid/widget/DatePicker$TwTextWatcher;-><init>(Landroid/widget/DatePicker;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 601
    iget-object v0, p0, Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    iget-object v1, p0, Landroid/widget/DatePicker;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 605
    :goto_64
    iget-object v0, p0, Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Landroid/widget/DatePicker$TwTextWatcher;

    invoke-direct {v1, p0, v4, v2, v3}, Landroid/widget/DatePicker$TwTextWatcher;-><init>(Landroid/widget/DatePicker;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 606
    iget-object v0, p0, Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v4

    new-instance v1, Landroid/widget/DatePicker$TwTextWatcher;

    invoke-direct {v1, p0, v6, v4, v3}, Landroid/widget/DatePicker$TwTextWatcher;-><init>(Landroid/widget/DatePicker;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_8

    .line 603
    :cond_7d
    iget-object v0, p0, Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Landroid/widget/DatePicker$TwTextWatcher;

    invoke-direct {v1, p0, v5, v3, v2}, Landroid/widget/DatePicker$TwTextWatcher;-><init>(Landroid/widget/DatePicker;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_64

    .line 610
    :pswitch_8a
    iget-object v0, p0, Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v3

    .line 611
    iget-object v0, p0, Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v2

    .line 612
    iget-object v0, p0, Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v4

    .line 614
    iget-object v0, p0, Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Landroid/widget/DatePicker$TwTextWatcher;

    invoke-direct {v1, p0, v4, v3, v3}, Landroid/widget/DatePicker$TwTextWatcher;-><init>(Landroid/widget/DatePicker;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 615
    iget-boolean v0, p0, Landroid/widget/DatePicker;->isNumMonth:Z

    if-eqz v0, :cond_db

    .line 616
    iget-object v0, p0, Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Landroid/widget/DatePicker$TwTextWatcher;

    invoke-direct {v1, p0, v4, v2, v2}, Landroid/widget/DatePicker$TwTextWatcher;-><init>(Landroid/widget/DatePicker;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 617
    iget-object v0, p0, Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    iget-object v1, p0, Landroid/widget/DatePicker;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 621
    :goto_cd
    iget-object v0, p0, Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v4

    new-instance v1, Landroid/widget/DatePicker$TwTextWatcher;

    invoke-direct {v1, p0, v6, v4, v3}, Landroid/widget/DatePicker$TwTextWatcher;-><init>(Landroid/widget/DatePicker;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_8

    .line 619
    :cond_db
    iget-object v0, p0, Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Landroid/widget/DatePicker$TwTextWatcher;

    invoke-direct {v1, p0, v5, v2, v2}, Landroid/widget/DatePicker$TwTextWatcher;-><init>(Landroid/widget/DatePicker;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_cd

    .line 625
    :pswitch_e8
    iget-object v0, p0, Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v3

    .line 626
    iget-object v0, p0, Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v2

    .line 627
    iget-object v0, p0, Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v4

    .line 629
    iget-object v0, p0, Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Landroid/widget/DatePicker$TwTextWatcher;

    invoke-direct {v1, p0, v6, v3, v3}, Landroid/widget/DatePicker$TwTextWatcher;-><init>(Landroid/widget/DatePicker;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 630
    iget-boolean v0, p0, Landroid/widget/DatePicker;->isNumMonth:Z

    if-eqz v0, :cond_139

    .line 631
    iget-object v0, p0, Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Landroid/widget/DatePicker$TwTextWatcher;

    invoke-direct {v1, p0, v4, v2, v2}, Landroid/widget/DatePicker$TwTextWatcher;-><init>(Landroid/widget/DatePicker;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 632
    iget-object v0, p0, Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    iget-object v1, p0, Landroid/widget/DatePicker;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 636
    :goto_12b
    iget-object v0, p0, Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v4

    new-instance v1, Landroid/widget/DatePicker$TwTextWatcher;

    invoke-direct {v1, p0, v4, v4, v3}, Landroid/widget/DatePicker$TwTextWatcher;-><init>(Landroid/widget/DatePicker;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_8

    .line 634
    :cond_139
    iget-object v0, p0, Landroid/widget/DatePicker;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Landroid/widget/DatePicker$TwTextWatcher;

    invoke-direct {v1, p0, v5, v2, v2}, Landroid/widget/DatePicker$TwTextWatcher;-><init>(Landroid/widget/DatePicker;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_12b

    .line 593
    :pswitch_data_146
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_8a
        :pswitch_e8
    .end packed-switch
.end method

.method private twLog(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 676
    return-void
.end method

.method private updateDaySpinner()V
    .registers 4

    .prologue
    .line 508
    invoke-virtual {p0}, Landroid/widget/DatePicker;->getMaxDayOfMonth()I

    move-result v0

    .line 511
    .local v0, max:I
    iget-object v1, p0, Landroid/widget/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/widget/NumberPicker;->twSetRange(II)V

    .line 512
    iget-object v1, p0, Landroid/widget/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    iget v2, p0, Landroid/widget/DatePicker;->mDay:I

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setCurrent(I)V

    .line 513
    return-void
.end method

.method private updateSpinners()V
    .registers 3

    .prologue
    .line 496
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateDaySpinner()V

    .line 497
    iget-object v0, p0, Landroid/widget/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    iget v1, p0, Landroid/widget/DatePicker;->mYear:I

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setCurrent(I)V

    .line 502
    iget-object v0, p0, Landroid/widget/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    iget v1, p0, Landroid/widget/DatePicker;->mMonth:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setCurrent(I)V

    .line 503
    return-void
.end method


# virtual methods
.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 458
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Landroid/widget/DatePicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 459
    return-void
.end method

.method public getDayOfMonth()I
    .registers 2

    .prologue
    .line 534
    iget v0, p0, Landroid/widget/DatePicker;->mDay:I

    return v0
.end method

.method protected getMaxDayOfMonth()I
    .registers 7

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x1

    .line 516
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 517
    .local v0, cal:Ljava/util/Calendar;
    iget v2, p0, Landroid/widget/DatePicker;->mYear:I

    invoke-virtual {v0, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 518
    const/4 v2, 0x2

    iget v3, p0, Landroid/widget/DatePicker;->mMonth:I

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 519
    invoke-virtual {v0, v5, v4}, Ljava/util/Calendar;->set(II)V

    .line 520
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    .line 522
    .local v1, max:I
    return v1
.end method

.method public getMonth()I
    .registers 2

    .prologue
    .line 530
    iget v0, p0, Landroid/widget/DatePicker;->mMonth:I

    return v0
.end method

.method public getYear()I
    .registers 2

    .prologue
    .line 526
    iget v0, p0, Landroid/widget/DatePicker;->mYear:I

    return v0
.end method

.method public init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V
    .registers 6
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"
    .parameter "onDateChangedListener"

    .prologue
    .line 487
    const/16 v0, 0x834

    if-le p1, v0, :cond_6

    const/16 p1, 0x834

    .line 488
    :cond_6
    iput p1, p0, Landroid/widget/DatePicker;->mYear:I

    .line 489
    iput p2, p0, Landroid/widget/DatePicker;->mMonth:I

    .line 490
    iput p3, p0, Landroid/widget/DatePicker;->mDay:I

    .line 491
    iput-object p4, p0, Landroid/widget/DatePicker;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    .line 492
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateSpinners()V

    .line 493
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5
    .parameter "state"

    .prologue
    .line 470
    move-object v0, p1

    check-cast v0, Landroid/widget/DatePicker$SavedState;

    move-object v1, v0

    .line 471
    .local v1, ss:Landroid/widget/DatePicker$SavedState;
    invoke-virtual {v1}, Landroid/widget/DatePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 472
    invoke-virtual {v1}, Landroid/widget/DatePicker$SavedState;->getYear()I

    move-result v2

    iput v2, p0, Landroid/widget/DatePicker;->mYear:I

    .line 473
    invoke-virtual {v1}, Landroid/widget/DatePicker$SavedState;->getMonth()I

    move-result v2

    iput v2, p0, Landroid/widget/DatePicker;->mMonth:I

    .line 474
    invoke-virtual {v1}, Landroid/widget/DatePicker$SavedState;->getDay()I

    move-result v2

    iput v2, p0, Landroid/widget/DatePicker;->mDay:I

    .line 475
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateSpinners()V

    .line 476
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 7

    .prologue
    .line 463
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 465
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Landroid/widget/DatePicker$SavedState;

    iget v2, p0, Landroid/widget/DatePicker;->mYear:I

    iget v3, p0, Landroid/widget/DatePicker;->mMonth:I

    iget v4, p0, Landroid/widget/DatePicker;->mDay:I

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/widget/DatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIILandroid/widget/DatePicker$1;)V

    return-object v0
.end method

.method public setEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 272
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 273
    iget-object v0, p0, Landroid/widget/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 274
    iget-object v0, p0, Landroid/widget/DatePicker;->mMonthPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 275
    iget-object v0, p0, Landroid/widget/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 276
    return-void
.end method

.method public twSetRangeOfYear(II)V
    .registers 4
    .parameter "startYear"
    .parameter "endYear"

    .prologue
    .line 265
    iget-object v0, p0, Landroid/widget/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1, p2}, Landroid/widget/NumberPicker;->setRange(II)V

    .line 266
    iput p1, p0, Landroid/widget/DatePicker;->mYear:I

    .line 267
    return-void
.end method

.method public updateDate(III)V
    .registers 5
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    .line 364
    iget v0, p0, Landroid/widget/DatePicker;->mYear:I

    if-ne v0, p1, :cond_c

    iget v0, p0, Landroid/widget/DatePicker;->mMonth:I

    if-ne v0, p2, :cond_c

    iget v0, p0, Landroid/widget/DatePicker;->mDay:I

    if-eq v0, p3, :cond_1f

    .line 365
    :cond_c
    iput p1, p0, Landroid/widget/DatePicker;->mYear:I

    .line 366
    iput p2, p0, Landroid/widget/DatePicker;->mMonth:I

    .line 367
    iput p3, p0, Landroid/widget/DatePicker;->mDay:I

    .line 368
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateSpinners()V

    .line 369
    invoke-direct {p0}, Landroid/widget/DatePicker;->getShortMonths()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/DatePicker;->reorderPickers([Ljava/lang/String;)V

    .line 370
    invoke-direct {p0}, Landroid/widget/DatePicker;->notifyDateChanged()V

    .line 372
    :cond_1f
    return-void
.end method
