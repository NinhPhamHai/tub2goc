.class Lch/blinkenlights/android/vanilla/MediaButtonReceiver$DelayedClickCounter;
.super Ljava/lang/Object;
.source "MediaButtonReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/blinkenlights/android/vanilla/MediaButtonReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DelayedClickCounter"
.end annotation


# static fields
.field private static sDelayedClicks:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSerial:J


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 0

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/MediaButtonReceiver$DelayedClickCounter;->mContext:Landroid/content/Context;

    .line 216
    iput-wide p2, p0, Lch/blinkenlights/android/vanilla/MediaButtonReceiver$DelayedClickCounter;->mSerial:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 221
    sget v0, Lch/blinkenlights/android/vanilla/MediaButtonReceiver$DelayedClickCounter;->sDelayedClicks:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Lch/blinkenlights/android/vanilla/MediaButtonReceiver$DelayedClickCounter;->sDelayedClicks:I

    .line 222
    iget-wide v2, p0, Lch/blinkenlights/android/vanilla/MediaButtonReceiver$DelayedClickCounter;->mSerial:J

    invoke-static {}, Lch/blinkenlights/android/vanilla/MediaButtonReceiver;->access$000()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    return-void

    .line 226
    :cond_0
    sget v0, Lch/blinkenlights/android/vanilla/MediaButtonReceiver$DelayedClickCounter;->sDelayedClicks:I

    if-eq v0, v1, :cond_1

    const-string v0, "ch.blinkenlights.android.vanilla.action.PREVIOUS_SONG_AUTOPLAY"

    goto :goto_0

    :cond_1
    const-string v0, "ch.blinkenlights.android.vanilla.action.NEXT_SONG_AUTOPLAY"

    :goto_0
    const/4 v1, 0x0

    .line 233
    sput v1, Lch/blinkenlights/android/vanilla/MediaButtonReceiver$DelayedClickCounter;->sDelayedClicks:I

    .line 234
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/MediaButtonReceiver$DelayedClickCounter;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lch/blinkenlights/android/vanilla/MediaButtonReceiver;->access$100(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
