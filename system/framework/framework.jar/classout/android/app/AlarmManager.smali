.class public Landroid/app/AlarmManager;
.super Ljava/lang/Object;
.source "AlarmManager.java"


# static fields
.field public static final ELAPSED_REALTIME:I = 0x3

.field public static final ELAPSED_REALTIME_WAKEUP:I = 0x2

.field public static final INTERVAL_DAY:J = 0x5265c00L

.field public static final INTERVAL_FIFTEEN_MINUTES:J = 0xdbba0L

.field public static final INTERVAL_HALF_DAY:J = 0x2932e00L

.field public static final INTERVAL_HALF_HOUR:J = 0x1b7740L

.field public static final INTERVAL_HOUR:J = 0x36ee80L

.field public static final RTC:I = 0x1

.field public static final RTC_WAKEUP:I


# instance fields
.field private final mService:Landroid/app/IAlarmManager;


# direct methods
.method constructor <init>(Landroid/app/IAlarmManager;)V
    .registers 2
    .parameter "service"

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    .line 92
    return-void
.end method


# virtual methods
.method public cancel(Landroid/app/PendingIntent;)V
    .registers 3
    .parameter "operation"

    .prologue
    .line 286
    :try_start_0
    iget-object v0, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    invoke-interface {v0, p1}, Landroid/app/IAlarmManager;->remove(Landroid/app/PendingIntent;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 289
    :goto_5
    return-void

    .line 287
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public set(IJLandroid/app/PendingIntent;)V
    .registers 6
    .parameter "type"
    .parameter "triggerAtTime"
    .parameter "operation"

    .prologue
    .line 139
    :try_start_0
    iget-object v0, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/app/IAlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 142
    :goto_5
    return-void

    .line 140
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setAutoPowerUp(Ljava/lang/String;)V
    .registers 3
    .parameter "time"

    .prologue
    .line 149
    :try_start_0
    iget-object v0, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    invoke-interface {v0, p1}, Landroid/app/IAlarmManager;->setAutoPowerUp(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 152
    :goto_5
    return-void

    .line 150
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setInexactRepeating(IJJLandroid/app/PendingIntent;)V
    .registers 14
    .parameter "type"
    .parameter "triggerAtTime"
    .parameter "interval"
    .parameter "operation"

    .prologue
    .line 269
    :try_start_0
    iget-object v0, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/app/IAlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 272
    :goto_9
    return-void

    .line 270
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public setRepeating(IJJLandroid/app/PendingIntent;)V
    .registers 14
    .parameter "type"
    .parameter "triggerAtTime"
    .parameter "interval"
    .parameter "operation"

    .prologue
    .line 203
    :try_start_0
    iget-object v0, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/app/IAlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 206
    :goto_9
    return-void

    .line 204
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public setTime(J)V
    .registers 4
    .parameter "millis"

    .prologue
    .line 299
    :try_start_0
    iget-object v0, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    invoke-interface {v0, p1, p2}, Landroid/app/IAlarmManager;->setTime(J)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 302
    :goto_5
    return-void

    .line 300
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .registers 3
    .parameter "timeZone"

    .prologue
    .line 312
    :try_start_0
    iget-object v0, p0, Landroid/app/AlarmManager;->mService:Landroid/app/IAlarmManager;

    invoke-interface {v0, p1}, Landroid/app/IAlarmManager;->setTimeZone(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 315
    :goto_5
    return-void

    .line 313
    :catch_6
    move-exception v0

    goto :goto_5
.end method
