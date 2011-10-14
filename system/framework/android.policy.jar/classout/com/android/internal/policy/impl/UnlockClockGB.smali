.class public Lcom/android/internal/policy/impl/UnlockClockGB;
.super Landroid/widget/LinearLayout;
.source "UnlockClockGB.java"


# static fields
.field private static final AMPMselection:I = 0x1

.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "UnlockClock"


# instance fields
.field private mAM:Landroid/widget/TextView;

.field private mAM_PM_Check01:Z

.field private mContext:Landroid/content/Context;

.field private mCreatedInPortrait:Z

.field private mDateFormatString:Ljava/lang/String;

.field private mDate_Month:Landroid/widget/TextView;

.field private mHour01:Landroid/widget/ImageView;

.field private mHour02:Landroid/widget/ImageView;

.field private mMin01:Landroid/widget/ImageView;

.field private mMin02:Landroid/widget/ImageView;

.field private mPM:Landroid/widget/TextView;

.field private mRightNow:Ljava/util/Calendar;

.field private tz:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 8
    .parameter "context"
    .parameter "createdInPortrait"

    .prologue
    const/4 v4, 0x0

    const v3, 0x1090078

    const/4 v2, 0x1

    .line 60
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 57
    iput-object v4, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->tz:Ljava/lang/String;

    .line 62
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/UnlockClockGB;->setOrientation(I)V

    .line 64
    iput-object p1, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mContext:Landroid/content/Context;

    .line 67
    iput-boolean p2, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mCreatedInPortrait:Z

    .line 71
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 72
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mCreatedInPortrait:Z

    if-eqz v1, :cond_77

    .line 73
    invoke-virtual {v0, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 85
    :goto_1e
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mRightNow:Ljava/util/Calendar;

    .line 86
    iput-object v4, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->tz:Ljava/lang/String;

    .line 88
    const v1, 0x1020269

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/UnlockClockGB;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mHour01:Landroid/widget/ImageView;

    .line 89
    const v1, 0x102026a

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/UnlockClockGB;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mHour02:Landroid/widget/ImageView;

    .line 90
    const v1, 0x102026c

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/UnlockClockGB;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mMin01:Landroid/widget/ImageView;

    .line 91
    const v1, 0x102026d

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/UnlockClockGB;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mMin02:Landroid/widget/ImageView;

    .line 92
    const v1, 0x102026e

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/UnlockClockGB;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mAM:Landroid/widget/TextView;

    .line 93
    const v1, 0x102026f

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/UnlockClockGB;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mPM:Landroid/widget/TextView;

    .line 94
    const v1, 0x1020270

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/UnlockClockGB;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mDate_Month:Landroid/widget/TextView;

    .line 96
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/UnlockClockGB;->refreshTimeAndDateDisplay()V

    .line 98
    return-void

    .line 76
    :cond_77
    invoke-virtual {v0, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_1e
.end method

.method private changeTimeStringToDrawable(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "hourString"
    .parameter "minString"

    .prologue
    const/4 v4, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const-string v5, ""

    .line 229
    new-array v0, v4, [I

    .line 230
    .local v0, choiceHourNumber:[I
    new-array v1, v4, [I

    .line 236
    .local v1, choiceMinNumber:[I
    const-string v4, ""

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 237
    .local v2, timePattern1:[Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {p2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 239
    .local v3, timePattern2:[Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/UnlockClockGB;->sortTimeDrawables([Ljava/lang/String;)[I

    move-result-object v0

    .line 240
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/UnlockClockGB;->sortTimeDrawables([Ljava/lang/String;)[I

    move-result-object v1

    .line 242
    iget-object v4, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mHour01:Landroid/widget/ImageView;

    aget v5, v0, v6

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 243
    iget-object v4, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mHour02:Landroid/widget/ImageView;

    aget v5, v0, v7

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 245
    iget-object v4, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mMin01:Landroid/widget/ImageView;

    aget v5, v1, v6

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 246
    iget-object v4, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mMin02:Landroid/widget/ImageView;

    aget v5, v1, v7

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 247
    return-void
.end method

.method private checkTimeAMPM(I)Ljava/lang/String;
    .registers 3
    .parameter "minInt"

    .prologue
    .line 201
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, minString:Ljava/lang/String;
    return-object v0
.end method

.method private checkTimeValue(I)Ljava/lang/String;
    .registers 5
    .parameter "minInt"

    .prologue
    .line 189
    const/16 v1, 0xa

    if-ge p1, v1, :cond_1c

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, minString:Ljava/lang/String;
    :goto_1b
    return-object v0

    .line 192
    .end local v0           #minString:Ljava/lang/String;
    :cond_1c
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #minString:Ljava/lang/String;
    goto :goto_1b
.end method

.method private setAMPM()I
    .registers 6

    .prologue
    .line 175
    iget-object v3, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mRightNow:Ljava/util/Calendar;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 176
    .local v0, am_pmInt01:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x107000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, strAMPM:[Ljava/lang/String;
    add-int/lit8 v3, v0, 0x1

    aget-object v1, v2, v3

    .line 181
    .local v1, am_pmString01:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mPM:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    return v0
.end method

.method private setAMPMMode()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 154
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mAM_PM_Check01:Z

    if-ne v1, v4, :cond_12

    .line 155
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mAM:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mPM:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    :cond_11
    :goto_11
    return-void

    .line 159
    :cond_12
    invoke-direct {p0}, Lcom/android/internal/policy/impl/UnlockClockGB;->setAMPM()I

    .line 160
    const/4 v0, 0x1

    .line 162
    .local v0, am_pm:I
    if-nez v0, :cond_23

    .line 163
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mAM:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mPM:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_11

    .line 166
    :cond_23
    if-ne v0, v4, :cond_11

    .line 167
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mAM:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mPM:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_11
.end method

.method private sortTimeDrawables([Ljava/lang/String;)[I
    .registers 9
    .parameter "timePattern"

    .prologue
    .line 257
    const/16 v6, 0xa

    new-array v5, v6, [I

    fill-array-data v5, :array_20

    .line 266
    .local v5, unlock_clock_drawables:[I
    const/4 v6, 0x4

    new-array v0, v6, [I

    .line 268
    .local v0, choiceNumber:[I
    array-length v4, p1

    .line 270
    .local v4, k:I
    const/4 v2, 0x1

    .local v2, i:I
    :goto_c
    if-ge v2, v4, :cond_1f

    .line 272
    :try_start_e
    aget-object v6, p1, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_13} :catch_1b

    move-result v3

    .line 276
    .local v3, j:I
    :goto_14
    aget v6, v5, v3

    aput v6, v0, v2

    .line 270
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 273
    .end local v3           #j:I
    :catch_1b
    move-exception v6

    move-object v1, v6

    .line 274
    .local v1, e:Ljava/lang/NumberFormatException;
    const/4 v3, 0x0

    .restart local v3       #j:I
    goto :goto_14

    .line 279
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v3           #j:I
    :cond_1f
    return-object v0

    .line 257
    :array_20
    .array-data 0x4
        0xct 0x4t 0x8t 0x1t
        0xdt 0x4t 0x8t 0x1t
        0xet 0x4t 0x8t 0x1t
        0xft 0x4t 0x8t 0x1t
        0x10t 0x4t 0x8t 0x1t
        0x11t 0x4t 0x8t 0x1t
        0x12t 0x4t 0x8t 0x1t
        0x13t 0x4t 0x8t 0x1t
        0x14t 0x4t 0x8t 0x1t
        0x15t 0x4t 0x8t 0x1t
    .end array-data
.end method

.method private transformHourData(I)Ljava/lang/String;
    .registers 4
    .parameter "hourInt"

    .prologue
    .line 211
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mAM_PM_Check01:Z

    if-nez v1, :cond_14

    .line 212
    const/16 v1, 0xc

    if-le p1, v1, :cond_f

    add-int/lit8 p1, p1, -0xc

    .line 214
    :cond_a
    :goto_a
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/UnlockClockGB;->checkTimeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, hourString:Ljava/lang/String;
    :goto_e
    return-object v0

    .line 213
    .end local v0           #hourString:Ljava/lang/String;
    :cond_f
    if-nez p1, :cond_a

    const/16 p1, 0xc

    goto :goto_a

    .line 219
    :cond_14
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/UnlockClockGB;->checkTimeValue(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #hourString:Ljava/lang/String;
    goto :goto_e
.end method


# virtual methods
.method public cleanUp()V
    .registers 2

    .prologue
    .line 251
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->tz:Ljava/lang/String;

    .line 253
    return-void
.end method

.method protected refreshTimeAndDateDisplay()V
    .registers 9

    .prologue
    .line 107
    iget-object v5, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mRightNow:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 115
    iget-object v5, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->tz:Ljava/lang/String;

    if-nez v5, :cond_80

    .line 116
    const-string v5, "persist.sys.timezone"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, current:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mRightNow:Ljava/util/Calendar;

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 123
    .end local v0           #current:Ljava/lang/String;
    :cond_1c
    :goto_1c
    const-string v5, "UnlockClock"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GMT_update mRightNow.getTimeZone().getID() == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mRightNow:Ljava/util/Calendar;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v5, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mRightNow:Ljava/util/Calendar;

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 131
    .local v1, hourInt01:I
    iget-object v5, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mRightNow:Ljava/util/Calendar;

    const/16 v6, 0xc

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 133
    .local v3, minInt01:I
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/UnlockClockGB;->transformHourData(I)Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, hourString01:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/UnlockClockGB;->checkTimeValue(I)Ljava/lang/String;

    move-result-object v4

    .line 136
    .local v4, minString01:Ljava/lang/String;
    invoke-direct {p0, v2, v4}, Lcom/android/internal/policy/impl/UnlockClockGB;->changeTimeStringToDrawable(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v5, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mAM_PM_Check01:Z

    .line 139
    invoke-direct {p0}, Lcom/android/internal/policy/impl/UnlockClockGB;->setAMPMMode()V

    .line 147
    iget-object v5, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mContext:Landroid/content/Context;

    const v6, 0x10400ac

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mDateFormatString:Ljava/lang/String;

    .line 149
    iget-object v5, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mDate_Month:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mDateFormatString:Ljava/lang/String;

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-static {v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    return-void

    .line 119
    .end local v1           #hourInt01:I
    .end local v2           #hourString01:Ljava/lang/String;
    .end local v3           #minInt01:I
    .end local v4           #minString01:Ljava/lang/String;
    :cond_80
    iget-object v5, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mRightNow:Ljava/util/Calendar;

    if-eqz v5, :cond_1c

    .line 120
    iget-object v5, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mRightNow:Ljava/util/Calendar;

    iget-object v6, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->tz:Ljava/lang/String;

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_1c
.end method

.method public resetClockInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .registers 3
    .parameter "updateMonitor"

    .prologue
    .line 101
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getChangedTimeZone()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->tz:Ljava/lang/String;

    .line 102
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/UnlockClockGB;->refreshTimeAndDateDisplay()V

    .line 103
    return-void
.end method
