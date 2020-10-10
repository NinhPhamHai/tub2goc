.class final Lorg/mozilla/javascript/NativeDate;
.super Lorg/mozilla/javascript/IdScriptableObject;
.source "NativeDate.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ConstructorId_UTC:I = -0x1

.field private static final ConstructorId_now:I = -0x3

.field private static final ConstructorId_parse:I = -0x2

.field private static final DATE_TAG:Ljava/lang/Object;

.field private static final HalfTimeDomain:D = 8.64E15

.field private static final HoursPerDay:D = 24.0

.field private static final Id_constructor:I = 0x1

.field private static final Id_getDate:I = 0x11

.field private static final Id_getDay:I = 0x13

.field private static final Id_getFullYear:I = 0xd

.field private static final Id_getHours:I = 0x15

.field private static final Id_getMilliseconds:I = 0x1b

.field private static final Id_getMinutes:I = 0x17

.field private static final Id_getMonth:I = 0xf

.field private static final Id_getSeconds:I = 0x19

.field private static final Id_getTime:I = 0xb

.field private static final Id_getTimezoneOffset:I = 0x1d

.field private static final Id_getUTCDate:I = 0x12

.field private static final Id_getUTCDay:I = 0x14

.field private static final Id_getUTCFullYear:I = 0xe

.field private static final Id_getUTCHours:I = 0x16

.field private static final Id_getUTCMilliseconds:I = 0x1c

.field private static final Id_getUTCMinutes:I = 0x18

.field private static final Id_getUTCMonth:I = 0x10

.field private static final Id_getUTCSeconds:I = 0x1a

.field private static final Id_getYear:I = 0xc

.field private static final Id_setDate:I = 0x27

.field private static final Id_setFullYear:I = 0x2b

.field private static final Id_setHours:I = 0x25

.field private static final Id_setMilliseconds:I = 0x1f

.field private static final Id_setMinutes:I = 0x23

.field private static final Id_setMonth:I = 0x29

.field private static final Id_setSeconds:I = 0x21

.field private static final Id_setTime:I = 0x1e

.field private static final Id_setUTCDate:I = 0x28

.field private static final Id_setUTCFullYear:I = 0x2c

.field private static final Id_setUTCHours:I = 0x26

.field private static final Id_setUTCMilliseconds:I = 0x20

.field private static final Id_setUTCMinutes:I = 0x24

.field private static final Id_setUTCMonth:I = 0x2a

.field private static final Id_setUTCSeconds:I = 0x22

.field private static final Id_setYear:I = 0x2d

.field private static final Id_toDateString:I = 0x4

.field private static final Id_toGMTString:I = 0x8

.field private static final Id_toISOString:I = 0x2e

.field private static final Id_toJSON:I = 0x2f

.field private static final Id_toLocaleDateString:I = 0x7

.field private static final Id_toLocaleString:I = 0x5

.field private static final Id_toLocaleTimeString:I = 0x6

.field private static final Id_toSource:I = 0x9

.field private static final Id_toString:I = 0x2

.field private static final Id_toTimeString:I = 0x3

.field private static final Id_toUTCString:I = 0x8

.field private static final Id_valueOf:I = 0xa

.field private static LocalTZA:D = 0.0

.field private static final MAXARGS:I = 0x7

.field private static final MAX_PROTOTYPE_ID:I = 0x2f

.field private static final MinutesPerDay:D = 1440.0

.field private static final MinutesPerHour:D = 60.0

.field private static final SecondsPerDay:D = 86400.0

.field private static final SecondsPerHour:D = 3600.0

.field private static final SecondsPerMinute:D = 60.0

.field private static final js_NaN_date_str:Ljava/lang/String; = "Invalid Date"

.field private static localeDateFormatter:Ljava/text/DateFormat; = null

.field private static localeDateTimeFormatter:Ljava/text/DateFormat; = null

.field private static localeTimeFormatter:Ljava/text/DateFormat; = null

.field private static final msPerDay:D = 8.64E7

.field private static final msPerHour:D = 3600000.0

.field private static final msPerMinute:D = 60000.0

.field private static final msPerSecond:D = 1000.0

.field static final serialVersionUID:J = -0x7349f3ade5310b76L

.field private static thisTimeZone:Ljava/util/TimeZone;

.field private static timeZoneFormatter:Ljava/text/DateFormat;


# instance fields
.field private date:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Date"

    .line 24
    sput-object v0, Lorg/mozilla/javascript/NativeDate;->DATE_TAG:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    .line 38
    sget-object v0, Lorg/mozilla/javascript/NativeDate;->thisTimeZone:Ljava/util/TimeZone;

    if-nez v0, :cond_0

    .line 41
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/NativeDate;->thisTimeZone:Ljava/util/TimeZone;

    .line 42
    sget-object v0, Lorg/mozilla/javascript/NativeDate;->thisTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    int-to-double v0, v0

    sput-wide v0, Lorg/mozilla/javascript/NativeDate;->LocalTZA:D

    :cond_0
    return-void
.end method

.method private static DateFromTime(D)I
    .locals 3

    .line 523
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->YearFromTime(D)I

    move-result v0

    .line 524
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->Day(D)D

    move-result-wide p0

    int-to-double v1, v0

    invoke-static {v1, v2}, Lorg/mozilla/javascript/NativeDate;->DayFromYear(D)D

    move-result-wide v1

    sub-double/2addr p0, v1

    double-to-int p0, p0

    add-int/lit8 p0, p0, -0x3b

    const/16 p1, 0x1f

    if-gez p0, :cond_1

    const/16 v0, -0x1c

    if-ge p0, v0, :cond_0

    add-int/2addr p0, p1

    :cond_0
    add-int/lit8 p0, p0, 0x1c

    add-int/lit8 p0, p0, 0x1

    return p0

    .line 531
    :cond_1
    invoke-static {v0}, Lorg/mozilla/javascript/NativeDate;->IsLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p0, :cond_2

    const/16 p0, 0x1d

    return p0

    :cond_2
    add-int/lit8 p0, p0, -0x1

    .line 539
    :cond_3
    div-int/lit8 v0, p0, 0x1e

    const/16 v1, 0x113

    const/16 v2, 0x1e

    packed-switch v0, :pswitch_data_0

    .line 552
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    goto :goto_2

    :pswitch_0
    sub-int/2addr p0, v1

    add-int/lit8 p0, p0, 0x1

    return p0

    :pswitch_1
    const/16 p1, 0x113

    goto :goto_1

    :pswitch_2
    const/16 v0, 0xf5

    const/16 p1, 0xf5

    goto :goto_0

    :pswitch_3
    const/16 p1, 0xd6

    goto :goto_1

    :pswitch_4
    const/16 v0, 0xb8

    const/16 p1, 0xb8

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x99

    const/16 p1, 0x99

    goto :goto_0

    :pswitch_6
    const/16 p1, 0x7a

    goto :goto_1

    :pswitch_7
    const/16 v0, 0x5c

    const/16 p1, 0x5c

    goto :goto_0

    :pswitch_8
    const/16 p1, 0x3d

    goto :goto_1

    :goto_0
    :pswitch_9
    const/16 v2, 0x1f

    :goto_1
    sub-int/2addr p0, p1

    if-gez p0, :cond_4

    add-int/2addr p0, v2

    :cond_4
    add-int/lit8 p0, p0, 0x1

    return p0

    :pswitch_a
    add-int/lit8 p0, p0, 0x1

    return p0

    :goto_2
    const/4 p0, 0x0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static Day(D)D
    .locals 2

    const-wide v0, 0x4194997000000000L    # 8.64E7

    div-double/2addr p0, v0

    .line 399
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private static DayFromMonth(II)D
    .locals 3

    mul-int/lit8 v0, p0, 0x1e

    const/4 v1, 0x2

    const/4 v2, 0x7

    if-lt p0, v2, :cond_0

    .line 457
    div-int/lit8 v2, p0, 0x2

    :goto_0
    add-int/lit8 v2, v2, -0x1

    add-int/2addr v0, v2

    goto :goto_1

    :cond_0
    if-lt p0, v1, :cond_1

    add-int/lit8 v2, p0, -0x1

    .line 458
    div-int/2addr v2, v1

    goto :goto_0

    :cond_1
    add-int/2addr v0, p0

    :goto_1
    if-lt p0, v1, :cond_2

    .line 461
    invoke-static {p1}, Lorg/mozilla/javascript/NativeDate;->IsLeapYear(I)Z

    move-result p0

    if-eqz p0, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    int-to-double p0, v0

    return-wide p0
.end method

.method private static DayFromYear(D)D
    .locals 6

    const-wide v0, 0x409ec80000000000L    # 1970.0

    sub-double v0, p0, v0

    const-wide v2, 0x4076d00000000000L    # 365.0

    mul-double v0, v0, v2

    const-wide v2, 0x409ec40000000000L    # 1969.0

    sub-double v2, p0, v2

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    div-double/2addr v2, v4

    .line 421
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    const-wide v2, 0x409db40000000000L    # 1901.0

    sub-double v2, p0, v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    const-wide v2, 0x4099040000000000L    # 1601.0

    sub-double/2addr p0, v2

    const-wide/high16 v2, 0x4079000000000000L    # 400.0

    div-double/2addr p0, v2

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    add-double/2addr v0, p0

    return-wide v0
.end method

.method private static DaylightSavingTA(D)D
    .locals 9

    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_0

    .line 584
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->YearFromTime(D)I

    move-result v2

    invoke-static {v2}, Lorg/mozilla/javascript/NativeDate;->EquivalentYear(I)I

    move-result v2

    int-to-double v3, v2

    .line 585
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->MonthFromTime(D)I

    move-result v2

    int-to-double v5, v2

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->DateFromTime(D)I

    move-result v2

    int-to-double v7, v2

    invoke-static/range {v3 .. v8}, Lorg/mozilla/javascript/NativeDate;->MakeDay(DDD)D

    move-result-wide v2

    .line 586
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->TimeWithinDay(D)D

    move-result-wide p0

    invoke-static {v2, v3, p0, p1}, Lorg/mozilla/javascript/NativeDate;->MakeDate(DD)D

    move-result-wide p0

    .line 588
    :cond_0
    new-instance v2, Ljava/util/Date;

    double-to-long p0, p0

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 589
    sget-object p0, Lorg/mozilla/javascript/NativeDate;->thisTimeZone:Ljava/util/TimeZone;

    invoke-virtual {p0, v2}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-wide p0, 0x414b774000000000L    # 3600000.0

    return-wide p0

    :cond_1
    return-wide v0
.end method

.method private static DaysInMonth(II)I
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 478
    invoke-static {p0}, Lorg/mozilla/javascript/NativeDate;->IsLeapYear(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x1d

    goto :goto_0

    :cond_0
    const/16 p0, 0x1c

    :goto_0
    return p0

    :cond_1
    const/16 p0, 0x8

    if-lt p1, p0, :cond_2

    and-int/lit8 p0, p1, 0x1

    rsub-int/lit8 p0, p0, 0x1f

    goto :goto_1

    :cond_2
    and-int/lit8 p0, p1, 0x1

    add-int/lit8 p0, p0, 0x1e

    :goto_1
    return p0
.end method

.method private static DaysInYear(D)D
    .locals 1

    .line 468
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    double-to-int p0, p0

    .line 471
    invoke-static {p0}, Lorg/mozilla/javascript/NativeDate;->IsLeapYear(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const-wide p0, 0x4076e00000000000L    # 366.0

    goto :goto_0

    :cond_1
    const-wide p0, 0x4076d00000000000L    # 365.0

    :goto_0
    return-wide p0

    .line 469
    :cond_2
    :goto_1
    sget-wide p0, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    return-wide p0
.end method

.method private static EquivalentYear(I)I
    .locals 2

    int-to-double v0, p0

    .line 604
    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->DayFromYear(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x4

    .line 605
    rem-int/lit8 v0, v0, 0x7

    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x7

    .line 609
    :cond_0
    invoke-static {p0}, Lorg/mozilla/javascript/NativeDate;->IsLeapYear(I)Z

    move-result p0

    if-eqz p0, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 p0, 0x7b4

    return p0

    :pswitch_1
    const/16 p0, 0x7c4

    return p0

    :pswitch_2
    const/16 p0, 0x7b8

    return p0

    :pswitch_3
    const/16 p0, 0x7c8

    return p0

    :pswitch_4
    const/16 p0, 0x7bc

    return p0

    :pswitch_5
    const/16 p0, 0x7cc

    return p0

    :pswitch_6
    const/16 p0, 0x7c0

    return p0

    :cond_1
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_7
    const/16 p0, 0x7b9

    return p0

    :pswitch_8
    const/16 p0, 0x7b3

    return p0

    :pswitch_9
    const/16 p0, 0x7bd

    return p0

    :pswitch_a
    const/16 p0, 0x7c2

    return p0

    :pswitch_b
    const/16 p0, 0x7c1

    return p0

    :pswitch_c
    const/16 p0, 0x7b5

    return p0

    :pswitch_d
    const/16 p0, 0x7ba

    return p0

    .line 631
    :goto_0
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    const/4 p0, 0x0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method private static HourFromTime(D)I
    .locals 5

    const-wide v0, 0x414b774000000000L    # 3600000.0

    div-double/2addr p0, v0

    .line 647
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x4038000000000000L    # 24.0

    rem-double/2addr p0, v0

    const-wide/16 v2, 0x0

    cmpg-double v4, p0, v2

    if-gez v4, :cond_0

    add-double/2addr p0, v0

    :cond_0
    double-to-int p0, p0

    return p0
.end method

.method private static IsLeapYear(I)Z
    .locals 1

    .line 413
    rem-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_1

    rem-int/lit8 v0, p0, 0x64

    if-nez v0, :cond_0

    rem-int/lit16 p0, p0, 0x190

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static LocalTime(D)D
    .locals 2

    .line 636
    sget-wide v0, Lorg/mozilla/javascript/NativeDate;->LocalTZA:D

    add-double/2addr v0, p0

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->DaylightSavingTA(D)D

    move-result-wide p0

    add-double/2addr v0, p0

    return-wide v0
.end method

.method private static MakeDate(DD)D
    .locals 2

    const-wide v0, 0x4194997000000000L    # 8.64E7

    mul-double p0, p0, v0

    add-double/2addr p0, p2

    return-wide p0
.end method

.method private static MakeDay(DDD)D
    .locals 5

    const-wide/high16 v0, 0x4028000000000000L    # 12.0

    div-double v2, p2, v0

    .line 689
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    add-double/2addr p0, v2

    rem-double/2addr p2, v0

    const-wide/16 v2, 0x0

    cmpg-double v4, p2, v2

    if-gez v4, :cond_0

    add-double/2addr p2, v0

    .line 695
    :cond_0
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->TimeFromYear(D)D

    move-result-wide v0

    const-wide v2, 0x4194997000000000L    # 8.64E7

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p2, p2

    double-to-int p0, p0

    .line 696
    invoke-static {p2, p0}, Lorg/mozilla/javascript/NativeDate;->DayFromMonth(II)D

    move-result-wide p0

    add-double/2addr v0, p0

    add-double/2addr v0, p4

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p0

    return-wide v0
.end method

.method private static MakeTime(DDDD)D
    .locals 2

    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    mul-double p0, p0, v0

    add-double/2addr p0, p2

    mul-double p0, p0, v0

    add-double/2addr p0, p4

    const-wide p2, 0x408f400000000000L    # 1000.0

    mul-double p0, p0, p2

    add-double/2addr p0, p6

    return-wide p0
.end method

.method private static MinFromTime(D)I
    .locals 5

    const-wide v0, 0x40ed4c0000000000L    # 60000.0

    div-double/2addr p0, v0

    .line 656
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    rem-double/2addr p0, v0

    const-wide/16 v2, 0x0

    cmpg-double v4, p0, v2

    if-gez v4, :cond_0

    add-double/2addr p0, v0

    :cond_0
    double-to-int p0, p0

    return p0
.end method

.method private static MonthFromTime(D)I
    .locals 3

    .line 486
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->YearFromTime(D)I

    move-result v0

    .line 487
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->Day(D)D

    move-result-wide p0

    int-to-double v1, v0

    invoke-static {v1, v2}, Lorg/mozilla/javascript/NativeDate;->DayFromYear(D)D

    move-result-wide v1

    sub-double/2addr p0, v1

    double-to-int p0, p0

    add-int/lit8 p0, p0, -0x3b

    const/4 p1, 0x1

    if-gez p0, :cond_1

    const/16 v0, -0x1c

    if-ge p0, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1

    .line 494
    :cond_1
    invoke-static {v0}, Lorg/mozilla/javascript/NativeDate;->IsLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p0, :cond_2

    return p1

    :cond_2
    add-int/lit8 p0, p0, -0x1

    .line 501
    :cond_3
    div-int/lit8 v0, p0, 0x1e

    const/4 v1, 0x2

    packed-switch v0, :pswitch_data_0

    .line 515
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    goto :goto_2

    :pswitch_0
    const/16 p0, 0xb

    return p0

    :pswitch_1
    const/16 v2, 0x113

    goto :goto_0

    :pswitch_2
    const/16 v2, 0xf5

    goto :goto_0

    :pswitch_3
    const/16 v2, 0xd6

    goto :goto_0

    :pswitch_4
    const/16 v2, 0xb8

    goto :goto_0

    :pswitch_5
    const/16 v2, 0x99

    goto :goto_0

    :pswitch_6
    const/16 v2, 0x7a

    goto :goto_0

    :pswitch_7
    const/16 v2, 0x5c

    goto :goto_0

    :pswitch_8
    const/16 v2, 0x3d

    goto :goto_0

    :pswitch_9
    const/16 v2, 0x1f

    :goto_0
    if-lt p0, v2, :cond_4

    add-int/2addr v0, v1

    goto :goto_1

    :cond_4
    add-int/2addr v0, p1

    :goto_1
    return v0

    :pswitch_a
    return v1

    :goto_2
    const/4 p0, 0x0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static SecFromTime(D)I
    .locals 5

    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr p0, v0

    .line 665
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    rem-double/2addr p0, v0

    const-wide/16 v2, 0x0

    cmpg-double v4, p0, v2

    if-gez v4, :cond_0

    add-double/2addr p0, v0

    :cond_0
    double-to-int p0, p0

    return p0
.end method

.method private static TimeClip(D)D
    .locals 5

    cmpl-double v0, p0, p0

    if-nez v0, :cond_2

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v2, p0, v0

    if-eqz v2, :cond_2

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v2, p0, v0

    if-eqz v2, :cond_2

    .line 708
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x433eb208c2dc0000L    # 8.64E15

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    if-lez v2, :cond_1

    add-double/2addr p0, v0

    .line 716
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    return-wide p0

    :cond_1
    add-double/2addr p0, v0

    .line 718
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    return-wide p0

    .line 713
    :cond_2
    :goto_0
    sget-wide p0, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    return-wide p0
.end method

.method private static TimeFromYear(D)D
    .locals 2

    .line 427
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->DayFromYear(D)D

    move-result-wide p0

    const-wide v0, 0x4194997000000000L    # 8.64E7

    mul-double p0, p0, v0

    return-wide p0
.end method

.method private static TimeWithinDay(D)D
    .locals 5

    const-wide v0, 0x4194997000000000L    # 8.64E7

    rem-double/2addr p0, v0

    const-wide/16 v2, 0x0

    cmpg-double v4, p0, v2

    if-gez v4, :cond_0

    add-double/2addr p0, v0

    :cond_0
    return-wide p0
.end method

.method private static WeekDay(D)I
    .locals 5

    .line 565
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->Day(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    add-double/2addr p0, v0

    const-wide/high16 v0, 0x401c000000000000L    # 7.0

    rem-double/2addr p0, v0

    const-wide/16 v2, 0x0

    cmpg-double v4, p0, v2

    if-gez v4, :cond_0

    add-double/2addr p0, v0

    :cond_0
    double-to-int p0, p0

    return p0
.end method

.method private static YearFromTime(D)I
    .locals 10

    .line 432
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-wide v0, 0x421d63c37f000000L    # 3.1556952E10

    div-double v0, p0, v0

    .line 436
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    const-wide v2, 0x409ec80000000000L    # 1970.0

    add-double/2addr v0, v2

    .line 437
    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->TimeFromYear(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v2, p0

    if-lez v6, :cond_1

    sub-double/2addr v0, v4

    goto :goto_0

    :cond_1
    const-wide v6, 0x4194997000000000L    # 8.64E7

    .line 447
    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->DaysInYear(D)D

    move-result-wide v8

    mul-double v8, v8, v6

    add-double/2addr v2, v8

    cmpg-double v6, v2, p0

    if-gtz v6, :cond_2

    add-double/2addr v0, v4

    :cond_2
    :goto_0
    double-to-int p0, v0

    return p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method private static append0PaddedUint(Ljava/lang/StringBuilder;II)V
    .locals 3

    if-ltz p1, :cond_5

    add-int/lit8 p2, p2, -0x1

    const v0, 0x3b9aca00

    const/4 v1, 0x1

    const/16 v2, 0xa

    if-lt p1, v2, :cond_2

    if-ge p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    mul-int/lit8 v2, v0, 0xa

    if-ge p1, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, -0x1

    move v0, v2

    goto :goto_0

    :cond_1
    add-int/lit8 p2, p2, -0x9

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    :goto_1
    const/16 v2, 0x30

    if-lez p2, :cond_3

    .line 1355
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-eq v0, v1, :cond_4

    .line 1359
    div-int p2, p1, v0

    add-int/2addr p2, v2

    int-to-char p2, p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1360
    rem-int/2addr p1, v0

    .line 1361
    div-int/lit8 v0, v0, 0xa

    goto :goto_2

    :cond_4
    add-int/2addr p1, v2

    int-to-char p1, p1

    .line 1363
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    .line 1337
    :cond_5
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    const/4 p0, 0x0

    throw p0
.end method

.method private static appendMonthName(Ljava/lang/StringBuilder;I)V
    .locals 4

    const/4 v0, 0x3

    mul-int/lit8 p1, p1, 0x3

    const/4 v1, 0x0

    :goto_0
    if-eq v1, v0, :cond_0

    add-int v2, p1, v1

    const-string v3, "JanFebMarAprMayJunJulAugSepOctNovDec"

    .line 1375
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static appendWeekDayName(Ljava/lang/StringBuilder;I)V
    .locals 4

    const/4 v0, 0x3

    mul-int/lit8 p1, p1, 0x3

    const/4 v1, 0x0

    :goto_0
    if-eq v1, v0, :cond_0

    add-int v2, p1, v1

    const-string v3, "SunMonTueWedThuFriSat"

    .line 1384
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static date_format(DI)Ljava/lang/String;
    .locals 10

    .line 1144
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x3c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1145
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->LocalTime(D)D

    move-result-wide v2

    const/4 v4, 0x2

    const/4 v5, 0x4

    const/4 v6, 0x3

    if-eq p2, v6, :cond_1

    .line 1152
    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->WeekDay(D)I

    move-result v6

    invoke-static {v0, v6}, Lorg/mozilla/javascript/NativeDate;->appendWeekDayName(Ljava/lang/StringBuilder;I)V

    const/16 v6, 0x20

    .line 1153
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1154
    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->MonthFromTime(D)I

    move-result v7

    invoke-static {v0, v7}, Lorg/mozilla/javascript/NativeDate;->appendMonthName(Ljava/lang/StringBuilder;I)V

    .line 1155
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1156
    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->DateFromTime(D)I

    move-result v7

    invoke-static {v0, v7, v4}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuilder;II)V

    .line 1157
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1158
    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->YearFromTime(D)I

    move-result v7

    if-gez v7, :cond_0

    const/16 v8, 0x2d

    .line 1160
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    neg-int v7, v7

    .line 1163
    :cond_0
    invoke-static {v0, v7, v5}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuilder;II)V

    if-eq p2, v5, :cond_1

    .line 1165
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    if-eq p2, v5, :cond_5

    .line 1169
    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->HourFromTime(D)I

    move-result p2

    invoke-static {v0, p2, v4}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuilder;II)V

    const/16 p2, 0x3a

    .line 1170
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1171
    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->MinFromTime(D)I

    move-result v6

    invoke-static {v0, v6, v4}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuilder;II)V

    .line 1172
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1173
    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->SecFromTime(D)I

    move-result p2

    invoke-static {v0, p2, v4}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuilder;II)V

    .line 1177
    sget-wide v6, Lorg/mozilla/javascript/NativeDate;->LocalTZA:D

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->DaylightSavingTA(D)D

    move-result-wide v8

    add-double/2addr v6, v8

    const-wide v8, 0x40ed4c0000000000L    # 60000.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int p2, v6

    .line 1180
    div-int/lit8 v4, p2, 0x3c

    mul-int/lit8 v4, v4, 0x64

    rem-int/2addr p2, v1

    add-int/2addr v4, p2

    if-lez v4, :cond_2

    const-string p2, " GMT+"

    .line 1182
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string p2, " GMT-"

    .line 1184
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-int v4, v4

    .line 1187
    :goto_0
    invoke-static {v0, v4, v5}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuilder;II)V

    .line 1189
    sget-object p2, Lorg/mozilla/javascript/NativeDate;->timeZoneFormatter:Ljava/text/DateFormat;

    if-nez p2, :cond_3

    .line 1190
    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string v1, "zzz"

    invoke-direct {p2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object p2, Lorg/mozilla/javascript/NativeDate;->timeZoneFormatter:Ljava/text/DateFormat;

    :cond_3
    const-wide/16 v4, 0x0

    cmpg-double p2, p0, v4

    if-gez p2, :cond_4

    .line 1195
    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->YearFromTime(D)I

    move-result p2

    invoke-static {p2}, Lorg/mozilla/javascript/NativeDate;->EquivalentYear(I)I

    move-result p2

    int-to-double v1, p2

    .line 1196
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->MonthFromTime(D)I

    move-result p2

    int-to-double v3, p2

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->DateFromTime(D)I

    move-result p2

    int-to-double v5, p2

    invoke-static/range {v1 .. v6}, Lorg/mozilla/javascript/NativeDate;->MakeDay(DDD)D

    move-result-wide v1

    .line 1197
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->TimeWithinDay(D)D

    move-result-wide p0

    invoke-static {v1, v2, p0, p1}, Lorg/mozilla/javascript/NativeDate;->MakeDate(DD)D

    move-result-wide p0

    :cond_4
    const-string p2, " ("

    .line 1199
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1200
    new-instance p2, Ljava/util/Date;

    double-to-long p0, p0

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 1201
    sget-object p0, Lorg/mozilla/javascript/NativeDate;->timeZoneFormatter:Ljava/text/DateFormat;

    monitor-enter p0

    .line 1202
    :try_start_0
    sget-object p1, Lorg/mozilla/javascript/NativeDate;->timeZoneFormatter:Ljava/text/DateFormat;

    invoke-virtual {p1, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1203
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p0, 0x29

    .line 1204
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 1203
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 1206
    :cond_5
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static date_msecFromArgs([Ljava/lang/Object;)D
    .locals 20

    move-object/from16 v0, p0

    const/4 v1, 0x7

    .line 743
    new-array v2, v1, [D

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x2

    const-wide/16 v6, 0x0

    if-ge v4, v1, :cond_4

    .line 748
    array-length v8, v0

    if-ge v4, v8, :cond_2

    .line 749
    aget-object v5, v0, v4

    invoke-static {v5}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v5

    cmpl-double v7, v5, v5

    if-nez v7, :cond_1

    .line 750
    invoke-static {v5, v6}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 753
    :cond_0
    aget-object v5, v0, v4

    invoke-static {v5}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v5

    aput-wide v5, v2, v4

    goto :goto_2

    .line 751
    :cond_1
    :goto_1
    sget-wide v0, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    return-wide v0

    :cond_2
    if-ne v4, v5, :cond_3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 756
    aput-wide v5, v2, v4

    goto :goto_2

    .line 758
    :cond_3
    aput-wide v6, v2, v4

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 764
    :cond_4
    aget-wide v0, v2, v3

    cmpl-double v4, v0, v6

    if-ltz v4, :cond_5

    aget-wide v0, v2, v3

    const-wide v6, 0x4058c00000000000L    # 99.0

    cmpg-double v4, v0, v6

    if-gtz v4, :cond_5

    .line 765
    aget-wide v0, v2, v3

    const-wide v6, 0x409db00000000000L    # 1900.0

    add-double/2addr v0, v6

    aput-wide v0, v2, v3

    .line 767
    :cond_5
    aget-wide v6, v2, v3

    const/4 v0, 0x1

    aget-wide v8, v2, v0

    aget-wide v10, v2, v5

    const/4 v0, 0x3

    aget-wide v12, v2, v0

    const/4 v0, 0x4

    aget-wide v14, v2, v0

    const/4 v0, 0x5

    aget-wide v16, v2, v0

    const/4 v0, 0x6

    aget-wide v18, v2, v0

    invoke-static/range {v6 .. v19}, Lorg/mozilla/javascript/NativeDate;->date_msecFromDate(DDDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method private static date_msecFromDate(DDDDDDD)D
    .locals 0

    .line 733
    invoke-static/range {p0 .. p5}, Lorg/mozilla/javascript/NativeDate;->MakeDay(DDD)D

    move-result-wide p0

    .line 734
    invoke-static/range {p6 .. p13}, Lorg/mozilla/javascript/NativeDate;->MakeTime(DDDD)D

    move-result-wide p2

    .line 735
    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/javascript/NativeDate;->MakeDate(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method private static date_parseString(Ljava/lang/String;)D
    .locals 34

    move-object/from16 v6, p0

    .line 931
    invoke-static/range {p0 .. p0}, Lorg/mozilla/javascript/NativeDate;->parseISOString(Ljava/lang/String;)D

    move-result-wide v0

    cmpl-double v2, v0, v0

    if-nez v2, :cond_0

    return-wide v0

    .line 951
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v0, -0x1

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/4 v15, -0x1

    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    const/16 v18, 0x0

    :cond_1
    :goto_0
    if-ge v0, v7, :cond_32

    .line 953
    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x39

    const/16 v3, 0x20

    const/16 v10, 0x30

    const/16 v8, 0x2d

    if-le v1, v3, :cond_30

    const/16 v9, 0x2c

    if-eq v1, v9, :cond_30

    if-ne v1, v8, :cond_2

    goto/16 :goto_13

    :cond_2
    const/16 v3, 0x28

    const/16 v20, 0x1

    if-ne v1, v3, :cond_5

    :cond_3
    :goto_1
    if-ge v0, v7, :cond_1

    .line 967
    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x28

    if-ne v1, v2, :cond_4

    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    :cond_4
    const/16 v2, 0x29

    if-ne v1, v2, :cond_3

    add-int/lit8 v20, v20, -0x1

    if-gtz v20, :cond_3

    goto :goto_0

    :cond_5
    const/16 v3, 0x2b

    const-wide/16 v22, 0x0

    if-gt v10, v1, :cond_1f

    if-gt v1, v2, :cond_1f

    add-int/lit8 v24, v1, -0x30

    move/from16 v33, v24

    move/from16 v24, v1

    move/from16 v1, v33

    :goto_2
    if-ge v0, v7, :cond_6

    .line 979
    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-gt v10, v9, :cond_7

    if-gt v9, v2, :cond_7

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v9

    sub-int/2addr v1, v10

    add-int/lit8 v0, v0, 0x1

    move/from16 v24, v9

    goto :goto_2

    :cond_6
    move/from16 v9, v24

    :cond_7
    const/16 v2, 0x3c

    if-eq v4, v3, :cond_1b

    if-ne v4, v8, :cond_8

    goto/16 :goto_7

    :cond_8
    const/16 v3, 0x46

    if-ge v1, v3, :cond_16

    const/16 v3, 0x2f

    if-ne v4, v3, :cond_9

    if-ltz v12, :cond_9

    if-ltz v13, :cond_9

    if-gez v11, :cond_9

    goto/16 :goto_5

    :cond_9
    const/16 v3, 0x3a

    if-ne v9, v3, :cond_c

    if-gez v5, :cond_a

    move v5, v1

    goto/16 :goto_9

    :cond_a
    if-gez v15, :cond_b

    goto :goto_3

    .line 1021
    :cond_b
    sget-wide v0, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    return-wide v0

    :cond_c
    const/16 v3, 0x2f

    if-ne v9, v3, :cond_f

    if-gez v12, :cond_d

    add-int/lit8 v1, v1, -0x1

    move v12, v1

    goto/16 :goto_9

    :cond_d
    if-gez v13, :cond_e

    goto :goto_4

    .line 1028
    :cond_e
    sget-wide v0, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    return-wide v0

    :cond_f
    if-ge v0, v7, :cond_10

    const/16 v3, 0x2c

    if-eq v9, v3, :cond_10

    const/16 v3, 0x20

    if-le v9, v3, :cond_10

    if-eq v9, v8, :cond_10

    .line 1030
    sget-wide v0, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    return-wide v0

    :cond_10
    if-eqz v18, :cond_12

    if-ge v1, v2, :cond_12

    cmpg-double v2, v16, v22

    if-gez v2, :cond_11

    int-to-double v1, v1

    sub-double v16, v16, v1

    goto/16 :goto_9

    :cond_11
    int-to-double v1, v1

    add-double v16, v16, v1

    goto :goto_9

    :cond_12
    if-ltz v5, :cond_13

    if-gez v15, :cond_13

    :goto_3
    move v15, v1

    goto :goto_9

    :cond_13
    if-ltz v15, :cond_14

    if-gez v14, :cond_14

    move v14, v1

    goto :goto_9

    :cond_14
    if-gez v13, :cond_15

    :goto_4
    move v13, v1

    goto :goto_9

    .line 1043
    :cond_15
    sget-wide v0, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    return-wide v0

    :cond_16
    :goto_5
    if-ltz v11, :cond_17

    .line 1010
    sget-wide v0, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    return-wide v0

    :cond_17
    const/16 v2, 0x20

    if-le v9, v2, :cond_19

    const/16 v2, 0x2c

    if-eq v9, v2, :cond_19

    const/16 v2, 0x2f

    if-eq v9, v2, :cond_19

    if-lt v0, v7, :cond_18

    goto :goto_6

    .line 1014
    :cond_18
    sget-wide v0, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    return-wide v0

    :cond_19
    :goto_6
    const/16 v2, 0x64

    if-ge v1, v2, :cond_1a

    add-int/lit16 v1, v1, 0x76c

    :cond_1a
    move v11, v1

    goto :goto_9

    :cond_1b
    :goto_7
    const/16 v8, 0x18

    if-ge v1, v8, :cond_1c

    mul-int/lit8 v1, v1, 0x3c

    goto :goto_8

    .line 999
    :cond_1c
    rem-int/lit8 v8, v1, 0x64

    div-int/lit8 v1, v1, 0x64

    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v1, v8

    :goto_8
    if-ne v4, v3, :cond_1d

    neg-int v1, v1

    :cond_1d
    cmpl-double v2, v16, v22

    if-eqz v2, :cond_1e

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpl-double v4, v16, v2

    if-eqz v4, :cond_1e

    .line 1003
    sget-wide v0, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    return-wide v0

    :cond_1e
    int-to-double v1, v1

    move-wide/from16 v16, v1

    const/16 v18, 0x1

    :goto_9
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_1f
    const/16 v2, 0x2f

    if-eq v1, v2, :cond_2f

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_2f

    if-eq v1, v3, :cond_2f

    if-ne v1, v8, :cond_20

    goto/16 :goto_12

    :cond_20
    add-int/lit8 v8, v0, -0x1

    move v9, v0

    :goto_a
    if-ge v9, v7, :cond_23

    .line 1051
    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x41

    if-gt v1, v0, :cond_21

    const/16 v1, 0x5a

    if-le v0, v1, :cond_22

    :cond_21
    const/16 v1, 0x61

    if-gt v1, v0, :cond_23

    const/16 v1, 0x7a

    if-le v0, v1, :cond_22

    goto :goto_b

    :cond_22
    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    :cond_23
    :goto_b
    sub-int v10, v9, v8

    const/4 v0, 0x2

    if-ge v10, v0, :cond_24

    .line 1058
    sget-wide v0, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    return-wide v0

    :cond_24
    const-string v3, "am;pm;monday;tuesday;wednesday;thursday;friday;saturday;sunday;january;february;march;april;may;june;july;august;september;october;november;december;gmt;ut;utc;est;edt;cst;cdt;mst;mdt;pst;pdt;"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_c
    const/16 v0, 0x3b

    .line 1072
    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v19

    if-gez v19, :cond_25

    .line 1074
    sget-wide v0, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    return-wide v0

    :cond_25
    const/16 v20, 0x1

    move-object v0, v3

    move/from16 v21, v9

    move v9, v1

    move/from16 v1, v20

    move-object/from16 v20, v3

    move-object/from16 v3, p0

    move/from16 v24, v4

    move v4, v8

    move/from16 v25, v8

    move v8, v5

    move v5, v10

    .line 1075
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2e

    const/4 v0, 0x2

    const/16 v1, 0xc

    if-ge v9, v0, :cond_29

    if-gt v8, v1, :cond_28

    if-gez v8, :cond_26

    goto :goto_d

    :cond_26
    if-nez v9, :cond_27

    if-ne v8, v1, :cond_2a

    const/4 v5, 0x0

    goto :goto_10

    :cond_27
    if-eq v8, v1, :cond_2a

    add-int/lit8 v5, v8, 0xc

    goto :goto_10

    .line 1086
    :cond_28
    :goto_d
    sget-wide v0, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    return-wide v0

    :cond_29
    add-int/lit8 v0, v9, -0x2

    const/4 v2, 0x7

    if-ge v0, v2, :cond_2b

    :cond_2a
    :goto_e
    move v5, v8

    goto :goto_10

    :cond_2b
    add-int/lit8 v0, v0, -0x7

    if-ge v0, v1, :cond_2d

    if-gez v12, :cond_2c

    move v12, v0

    goto :goto_e

    .line 1103
    :cond_2c
    sget-wide v0, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    return-wide v0

    :cond_2d
    add-int/lit8 v0, v0, -0xc

    packed-switch v0, :pswitch_data_0

    .line 1120
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    goto :goto_11

    :pswitch_0
    const-wide/high16 v0, 0x407e000000000000L    # 480.0

    goto :goto_f

    :pswitch_1
    const-wide v0, 0x407a400000000000L    # 420.0

    goto :goto_f

    :pswitch_2
    const-wide v0, 0x4076800000000000L    # 360.0

    goto :goto_f

    :pswitch_3
    const-wide/high16 v0, 0x406e000000000000L    # 240.0

    goto :goto_f

    :pswitch_4
    const-wide v0, 0x4072c00000000000L    # 300.0

    :goto_f
    move-wide/from16 v16, v0

    goto :goto_e

    :pswitch_5
    move v5, v8

    move-wide/from16 v16, v22

    :goto_10
    move/from16 v0, v21

    goto :goto_15

    :goto_11
    const/4 v0, 0x0

    throw v0

    :cond_2e
    add-int/lit8 v2, v19, 0x1

    add-int/lit8 v1, v9, 0x1

    move v5, v8

    move-object/from16 v3, v20

    move/from16 v9, v21

    move/from16 v4, v24

    move/from16 v8, v25

    goto/16 :goto_c

    :cond_2f
    :goto_12
    move v8, v5

    goto :goto_14

    :cond_30
    :goto_13
    move/from16 v24, v4

    move v8, v5

    const/16 v3, 0x2d

    if-ge v0, v7, :cond_31

    .line 957
    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v1, v3, :cond_31

    if-gt v10, v4, :cond_31

    if-gt v4, v2, :cond_31

    :goto_14
    move v4, v1

    move v5, v8

    goto/16 :goto_0

    :cond_31
    move v5, v8

    :goto_15
    move/from16 v4, v24

    goto/16 :goto_0

    :cond_32
    move v8, v5

    if-ltz v11, :cond_38

    if-ltz v12, :cond_38

    if-gez v13, :cond_33

    goto :goto_16

    :cond_33
    if-gez v14, :cond_34

    const/4 v14, 0x0

    :cond_34
    if-gez v15, :cond_35

    const/4 v15, 0x0

    :cond_35
    if-gez v8, :cond_36

    const/4 v8, 0x0

    :cond_36
    int-to-double v0, v11

    int-to-double v2, v12

    int-to-double v4, v13

    int-to-double v6, v8

    int-to-double v8, v15

    int-to-double v10, v14

    const-wide/16 v31, 0x0

    move-wide/from16 v19, v0

    move-wide/from16 v21, v2

    move-wide/from16 v23, v4

    move-wide/from16 v25, v6

    move-wide/from16 v27, v8

    move-wide/from16 v29, v10

    .line 1134
    invoke-static/range {v19 .. v32}, Lorg/mozilla/javascript/NativeDate;->date_msecFromDate(DDDDDDD)D

    move-result-wide v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpl-double v4, v16, v2

    if-nez v4, :cond_37

    .line 1136
    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->internalUTC(D)D

    move-result-wide v0

    return-wide v0

    :cond_37
    const-wide v2, 0x40ed4c0000000000L    # 60000.0

    mul-double v16, v16, v2

    add-double v0, v0, v16

    return-wide v0

    .line 1126
    :cond_38
    :goto_16
    sget-wide v0, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static init(Lorg/mozilla/javascript/Scriptable;Z)V
    .locals 3

    .line 30
    new-instance v0, Lorg/mozilla/javascript/NativeDate;

    invoke-direct {v0}, Lorg/mozilla/javascript/NativeDate;-><init>()V

    .line 32
    sget-wide v1, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    iput-wide v1, v0, Lorg/mozilla/javascript/NativeDate;->date:D

    const/16 v1, 0x2f

    .line 33
    invoke-virtual {v0, v1, p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->exportAsJSClass(ILorg/mozilla/javascript/Scriptable;Z)Lorg/mozilla/javascript/IdFunctionObject;

    return-void
.end method

.method private static internalUTC(D)D
    .locals 4

    .line 641
    sget-wide v0, Lorg/mozilla/javascript/NativeDate;->LocalTZA:D

    sub-double v2, p0, v0

    sub-double/2addr p0, v0

    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->DaylightSavingTA(D)D

    move-result-wide p0

    sub-double/2addr v2, p0

    return-wide v2
.end method

.method private static jsConstructor([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1212
    new-instance v0, Lorg/mozilla/javascript/NativeDate;

    invoke-direct {v0}, Lorg/mozilla/javascript/NativeDate;-><init>()V

    .line 1216
    array-length v1, p0

    if-nez v1, :cond_0

    .line 1217
    invoke-static {}, Lorg/mozilla/javascript/NativeDate;->now()D

    move-result-wide v1

    iput-wide v1, v0, Lorg/mozilla/javascript/NativeDate;->date:D

    return-object v0

    .line 1222
    :cond_0
    array-length v1, p0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    const/4 v1, 0x0

    .line 1223
    aget-object p0, p0, v1

    .line 1224
    instance-of v1, p0, Lorg/mozilla/javascript/Scriptable;

    if-eqz v1, :cond_1

    .line 1225
    check-cast p0, Lorg/mozilla/javascript/Scriptable;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Lorg/mozilla/javascript/Scriptable;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    .line 1227
    :cond_1
    instance-of v1, p0, Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    .line 1229
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/javascript/NativeDate;->date_parseString(Ljava/lang/String;)D

    move-result-wide v1

    goto :goto_0

    .line 1232
    :cond_2
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v1

    .line 1234
    :goto_0
    invoke-static {v1, v2}, Lorg/mozilla/javascript/NativeDate;->TimeClip(D)D

    move-result-wide v1

    iput-wide v1, v0, Lorg/mozilla/javascript/NativeDate;->date:D

    return-object v0

    .line 1238
    :cond_3
    invoke-static {p0}, Lorg/mozilla/javascript/NativeDate;->date_msecFromArgs([Ljava/lang/Object;)D

    move-result-wide v1

    .line 1240
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-nez p0, :cond_4

    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p0

    if-nez p0, :cond_4

    .line 1241
    invoke-static {v1, v2}, Lorg/mozilla/javascript/NativeDate;->internalUTC(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/mozilla/javascript/NativeDate;->TimeClip(D)D

    move-result-wide v1

    .line 1243
    :cond_4
    iput-wide v1, v0, Lorg/mozilla/javascript/NativeDate;->date:D

    return-object v0
.end method

.method private static jsStaticFunction_UTC([Ljava/lang/Object;)D
    .locals 2

    .line 773
    invoke-static {p0}, Lorg/mozilla/javascript/NativeDate;->date_msecFromArgs([Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->TimeClip(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private static js_toISOString(D)Ljava/lang/String;
    .locals 5

    .line 1308
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1b

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1310
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->YearFromTime(D)I

    move-result v1

    const/4 v2, 0x6

    const/16 v3, 0x2d

    if-gez v1, :cond_0

    .line 1312
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    neg-int v1, v1

    .line 1313
    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuilder;II)V

    goto :goto_0

    :cond_0
    const/16 v4, 0x270f

    if-le v1, v4, :cond_1

    .line 1315
    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuilder;II)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    .line 1317
    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuilder;II)V

    .line 1319
    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1320
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->MonthFromTime(D)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuilder;II)V

    .line 1321
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1322
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->DateFromTime(D)I

    move-result v1

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuilder;II)V

    const/16 v1, 0x54

    .line 1323
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1324
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->HourFromTime(D)I

    move-result v1

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuilder;II)V

    const/16 v1, 0x3a

    .line 1325
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1326
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->MinFromTime(D)I

    move-result v3

    invoke-static {v0, v3, v2}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuilder;II)V

    .line 1327
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1328
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->SecFromTime(D)I

    move-result v1

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuilder;II)V

    const/16 v1, 0x2e

    .line 1329
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1330
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->msFromTime(D)I

    move-result p0

    const/4 p1, 0x3

    invoke-static {v0, p0, p1}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuilder;II)V

    const/16 p0, 0x5a

    .line 1331
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1332
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static js_toUTCString(D)Ljava/lang/String;
    .locals 5

    .line 1284
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x3c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1286
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->WeekDay(D)I

    move-result v1

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->appendWeekDayName(Ljava/lang/StringBuilder;I)V

    const-string v1, ", "

    .line 1287
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1288
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->DateFromTime(D)I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuilder;II)V

    const/16 v1, 0x20

    .line 1289
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1290
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->MonthFromTime(D)I

    move-result v3

    invoke-static {v0, v3}, Lorg/mozilla/javascript/NativeDate;->appendMonthName(Ljava/lang/StringBuilder;I)V

    .line 1291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1292
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->YearFromTime(D)I

    move-result v3

    if-gez v3, :cond_0

    const/16 v4, 0x2d

    .line 1294
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    neg-int v3, v3

    :cond_0
    const/4 v4, 0x4

    .line 1296
    invoke-static {v0, v3, v4}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuilder;II)V

    .line 1297
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1298
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->HourFromTime(D)I

    move-result v1

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuilder;II)V

    const/16 v1, 0x3a

    .line 1299
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1300
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->MinFromTime(D)I

    move-result v3

    invoke-static {v0, v3, v2}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuilder;II)V

    .line 1301
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1302
    invoke-static {p0, p1}, Lorg/mozilla/javascript/NativeDate;->SecFromTime(D)I

    move-result p0

    invoke-static {v0, p0, v2}, Lorg/mozilla/javascript/NativeDate;->append0PaddedUint(Ljava/lang/StringBuilder;II)V

    const-string p0, " GMT"

    .line 1303
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1304
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static makeDate(D[Ljava/lang/Object;I)D
    .locals 17

    move-object/from16 v0, p2

    .line 1498
    array-length v1, v0

    if-nez v1, :cond_0

    .line 1499
    sget-wide v0, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    return-wide v0

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch p3, :pswitch_data_0

    .line 1527
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    goto/16 :goto_c

    :pswitch_0
    const/4 v5, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v5, 0x1

    :goto_0
    move v6, v5

    const/4 v5, 0x3

    goto :goto_3

    :pswitch_2
    const/4 v5, 0x0

    goto :goto_1

    :pswitch_3
    const/4 v5, 0x1

    :goto_1
    move v6, v5

    const/4 v5, 0x2

    goto :goto_3

    :pswitch_4
    const/4 v5, 0x0

    goto :goto_2

    :pswitch_5
    const/4 v5, 0x1

    :goto_2
    move v6, v5

    const/4 v5, 0x1

    .line 1531
    :goto_3
    array-length v7, v0

    if-ge v7, v5, :cond_1

    array-length v7, v0

    goto :goto_4

    :cond_1
    move v7, v5

    .line 1533
    :goto_4
    new-array v8, v2, [D

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_5
    if-ge v9, v7, :cond_4

    .line 1535
    aget-object v11, v0, v9

    invoke-static {v11}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v11

    cmpl-double v13, v11, v11

    if-nez v13, :cond_3

    .line 1536
    invoke-static {v11, v12}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v13

    if-eqz v13, :cond_2

    goto :goto_6

    .line 1539
    :cond_2
    invoke-static {v11, v12}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(D)D

    move-result-wide v11

    aput-wide v11, v8, v9

    goto :goto_7

    :cond_3
    :goto_6
    const/4 v10, 0x1

    :goto_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_4
    if-eqz v10, :cond_5

    .line 1545
    sget-wide v0, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    return-wide v0

    :cond_5
    cmpl-double v0, p0, p0

    if-eqz v0, :cond_7

    if-ge v5, v2, :cond_6

    .line 1556
    sget-wide v0, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    return-wide v0

    :cond_6
    const-wide/16 v9, 0x0

    goto :goto_8

    :cond_7
    if-eqz v6, :cond_8

    .line 1562
    invoke-static/range {p0 .. p1}, Lorg/mozilla/javascript/NativeDate;->LocalTime(D)D

    move-result-wide v9

    goto :goto_8

    :cond_8
    move-wide/from16 v9, p0

    :goto_8
    if-lt v5, v2, :cond_9

    if-lez v7, :cond_9

    .line 1568
    aget-wide v2, v8, v3

    move-wide v11, v2

    const/4 v3, 0x1

    goto :goto_9

    .line 1570
    :cond_9
    invoke-static {v9, v10}, Lorg/mozilla/javascript/NativeDate;->YearFromTime(D)I

    move-result v0

    int-to-double v11, v0

    :goto_9
    if-lt v5, v1, :cond_a

    if-ge v3, v7, :cond_a

    add-int/lit8 v0, v3, 0x1

    .line 1573
    aget-wide v1, v8, v3

    move-wide v13, v1

    goto :goto_a

    .line 1575
    :cond_a
    invoke-static {v9, v10}, Lorg/mozilla/javascript/NativeDate;->MonthFromTime(D)I

    move-result v0

    int-to-double v0, v0

    move-wide v13, v0

    move v0, v3

    :goto_a
    if-lt v5, v4, :cond_b

    if-ge v0, v7, :cond_b

    .line 1578
    aget-wide v0, v8, v0

    goto :goto_b

    .line 1580
    :cond_b
    invoke-static {v9, v10}, Lorg/mozilla/javascript/NativeDate;->DateFromTime(D)I

    move-result v0

    int-to-double v0, v0

    :goto_b
    move-wide v15, v0

    .line 1582
    invoke-static/range {v11 .. v16}, Lorg/mozilla/javascript/NativeDate;->MakeDay(DDD)D

    move-result-wide v0

    .line 1583
    invoke-static {v9, v10}, Lorg/mozilla/javascript/NativeDate;->TimeWithinDay(D)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/NativeDate;->MakeDate(DD)D

    move-result-wide v0

    if-eqz v6, :cond_c

    .line 1586
    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->internalUTC(D)D

    move-result-wide v0

    .line 1588
    :cond_c
    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->TimeClip(D)D

    move-result-wide v0

    return-wide v0

    :goto_c
    const/4 v0, 0x0

    .line 1527
    throw v0

    :pswitch_data_0
    .packed-switch 0x27
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static makeTime(D[Ljava/lang/Object;I)D
    .locals 20

    move-object/from16 v0, p2

    .line 1390
    array-length v1, v0

    if-nez v1, :cond_0

    .line 1400
    sget-wide v0, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    return-wide v0

    :cond_0
    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch p3, :pswitch_data_0

    .line 1435
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    goto/16 :goto_f

    :pswitch_0
    const/4 v6, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v6, 0x1

    :goto_0
    move v7, v6

    const/4 v6, 0x4

    goto :goto_4

    :pswitch_2
    const/4 v6, 0x0

    goto :goto_1

    :pswitch_3
    const/4 v6, 0x1

    :goto_1
    move v7, v6

    const/4 v6, 0x3

    goto :goto_4

    :pswitch_4
    const/4 v6, 0x0

    goto :goto_2

    :pswitch_5
    const/4 v6, 0x1

    :goto_2
    move v7, v6

    const/4 v6, 0x2

    goto :goto_4

    :pswitch_6
    const/4 v6, 0x0

    goto :goto_3

    :pswitch_7
    const/4 v6, 0x1

    :goto_3
    move v7, v6

    const/4 v6, 0x1

    .line 1439
    :goto_4
    array-length v8, v0

    if-ge v8, v6, :cond_1

    array-length v8, v0

    goto :goto_5

    :cond_1
    move v8, v6

    .line 1441
    :goto_5
    new-array v9, v3, [D

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_6
    if-ge v10, v8, :cond_4

    .line 1443
    aget-object v12, v0, v10

    invoke-static {v12}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v12

    cmpl-double v14, v12, v12

    if-nez v14, :cond_3

    .line 1444
    invoke-static {v12, v13}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v14

    if-eqz v14, :cond_2

    goto :goto_7

    .line 1447
    :cond_2
    invoke-static {v12, v13}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(D)D

    move-result-wide v12

    aput-wide v12, v9, v10

    goto :goto_8

    :cond_3
    :goto_7
    const/4 v11, 0x1

    :goto_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_4
    if-nez v11, :cond_c

    cmpl-double v0, p0, p0

    if-eqz v0, :cond_5

    goto/16 :goto_e

    :cond_5
    if-eqz v7, :cond_6

    .line 1462
    invoke-static/range {p0 .. p1}, Lorg/mozilla/javascript/NativeDate;->LocalTime(D)D

    move-result-wide v10

    goto :goto_9

    :cond_6
    move-wide/from16 v10, p0

    :goto_9
    if-lt v6, v3, :cond_7

    if-lez v8, :cond_7

    .line 1467
    aget-wide v3, v9, v4

    move-wide v12, v3

    const/4 v4, 0x1

    goto :goto_a

    .line 1469
    :cond_7
    invoke-static {v10, v11}, Lorg/mozilla/javascript/NativeDate;->HourFromTime(D)I

    move-result v0

    int-to-double v12, v0

    :goto_a
    if-lt v6, v1, :cond_8

    if-ge v4, v8, :cond_8

    add-int/lit8 v0, v4, 0x1

    .line 1472
    aget-wide v3, v9, v4

    move-wide v14, v3

    goto :goto_b

    .line 1474
    :cond_8
    invoke-static {v10, v11}, Lorg/mozilla/javascript/NativeDate;->MinFromTime(D)I

    move-result v0

    int-to-double v0, v0

    move-wide v14, v0

    move v0, v4

    :goto_b
    if-lt v6, v2, :cond_9

    if-ge v0, v8, :cond_9

    add-int/lit8 v1, v0, 0x1

    .line 1477
    aget-wide v2, v9, v0

    move v0, v1

    move-wide/from16 v16, v2

    goto :goto_c

    .line 1479
    :cond_9
    invoke-static {v10, v11}, Lorg/mozilla/javascript/NativeDate;->SecFromTime(D)I

    move-result v1

    int-to-double v1, v1

    move-wide/from16 v16, v1

    :goto_c
    if-lt v6, v5, :cond_a

    if-ge v0, v8, :cond_a

    .line 1482
    aget-wide v0, v9, v0

    goto :goto_d

    .line 1484
    :cond_a
    invoke-static {v10, v11}, Lorg/mozilla/javascript/NativeDate;->msFromTime(D)I

    move-result v0

    int-to-double v0, v0

    :goto_d
    move-wide/from16 v18, v0

    .line 1486
    invoke-static/range {v12 .. v19}, Lorg/mozilla/javascript/NativeDate;->MakeTime(DDDD)D

    move-result-wide v0

    .line 1487
    invoke-static {v10, v11}, Lorg/mozilla/javascript/NativeDate;->Day(D)D

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Lorg/mozilla/javascript/NativeDate;->MakeDate(DD)D

    move-result-wide v0

    if-eqz v7, :cond_b

    .line 1490
    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->internalUTC(D)D

    move-result-wide v0

    .line 1492
    :cond_b
    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeDate;->TimeClip(D)D

    move-result-wide v0

    return-wide v0

    .line 1454
    :cond_c
    :goto_e
    sget-wide v0, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    return-wide v0

    :goto_f
    const/4 v0, 0x0

    .line 1435
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static msFromTime(D)I
    .locals 5

    const-wide v0, 0x408f400000000000L    # 1000.0

    rem-double/2addr p0, v0

    const-wide/16 v2, 0x0

    cmpg-double v4, p0, v2

    if-gez v4, :cond_0

    add-double/2addr p0, v0

    :cond_0
    double-to-int p0, p0

    return p0
.end method

.method private static now()D
    .locals 2

    .line 574
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method private static parseISOString(Ljava/lang/String;)D
    .locals 34

    move-object/from16 v0, p0

    const/16 v1, 0x9

    .line 792
    new-array v1, v1, [I

    fill-array-data v1, :array_0

    .line 794
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x54

    const/16 v4, 0x2b

    const/4 v5, 0x4

    const/4 v6, 0x6

    const/4 v7, 0x3

    const/16 v8, 0x2d

    const/4 v9, 0x0

    const/4 v11, -0x1

    if-eqz v2, :cond_3

    .line 796
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-eq v12, v4, :cond_1

    if-ne v12, v8, :cond_0

    goto :goto_0

    :cond_0
    if-ne v12, v3, :cond_3

    const/4 v12, 0x3

    const/4 v13, 0x1

    goto :goto_2

    :cond_1
    :goto_0
    if-ne v12, v8, :cond_2

    const/4 v12, -0x1

    goto :goto_1

    :cond_2
    const/4 v12, 0x1

    :goto_1
    move v15, v12

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x6

    goto :goto_3

    :cond_3
    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_2
    const/4 v14, 0x4

    const/4 v15, 0x1

    :goto_3
    const/16 v16, 0x1

    :goto_4
    const/16 v17, 0x2

    const/16 v18, 0x8

    const/4 v10, 0x5

    const/4 v3, 0x7

    if-eq v12, v11, :cond_19

    if-nez v12, :cond_4

    move/from16 v19, v14

    goto :goto_5

    :cond_4
    if-ne v12, v6, :cond_5

    const/16 v19, 0x3

    goto :goto_5

    :cond_5
    const/16 v19, 0x2

    :goto_5
    add-int v11, v13, v19

    if-le v11, v2, :cond_7

    :cond_6
    :goto_6
    const/4 v0, -0x1

    const/4 v12, -0x1

    goto/16 :goto_10

    :cond_7
    const/16 v19, 0x0

    :goto_7
    if-ge v13, v11, :cond_9

    .line 817
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v4, 0x30

    if-lt v8, v4, :cond_6

    const/16 v4, 0x39

    if-le v8, v4, :cond_8

    goto :goto_6

    :cond_8
    mul-int/lit8 v19, v19, 0xa

    add-int/lit8 v8, v8, -0x30

    add-int v19, v19, v8

    add-int/lit8 v13, v13, 0x1

    const/16 v4, 0x2b

    const/16 v8, 0x2d

    goto :goto_7

    .line 821
    :cond_9
    aput v19, v1, v12

    if-ne v13, v2, :cond_b

    if-eq v12, v7, :cond_a

    if-eq v12, v3, :cond_a

    move v11, v12

    goto :goto_8

    :cond_a
    const/4 v11, -0x1

    :goto_8
    move v12, v11

    goto/16 :goto_f

    :cond_b
    add-int/lit8 v4, v13, 0x1

    .line 833
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v11, 0x5a

    if-ne v8, v11, :cond_d

    aput v9, v1, v3

    aput v9, v1, v18

    if-eq v12, v5, :cond_c

    if-eq v12, v10, :cond_c

    if-eq v12, v6, :cond_c

    move v13, v4

    goto :goto_6

    :cond_c
    move v13, v4

    goto/16 :goto_f

    :cond_d
    const/16 v11, 0x3a

    packed-switch v12, :pswitch_data_0

    const/16 v10, 0x2d

    const/16 v11, 0x54

    :goto_9
    const/16 v13, 0x2b

    goto/16 :goto_d

    :pswitch_0
    const/16 v10, 0x2d

    const/16 v11, 0x54

    const/4 v12, -0x1

    goto :goto_9

    :pswitch_1
    if-eq v8, v11, :cond_e

    add-int/lit8 v4, v4, -0x1

    :cond_e
    const/16 v10, 0x2d

    const/16 v11, 0x54

    const/16 v12, 0x8

    goto :goto_9

    :pswitch_2
    const/16 v13, 0x2b

    if-eq v8, v13, :cond_f

    const/16 v12, 0x2d

    if-ne v8, v12, :cond_13

    goto :goto_a

    :cond_f
    const/16 v12, 0x2d

    :cond_10
    :goto_a
    const/4 v10, 0x7

    goto :goto_b

    :pswitch_3
    const/16 v12, 0x2d

    const/16 v13, 0x2b

    const/16 v10, 0x2e

    if-ne v8, v10, :cond_11

    const/4 v10, 0x6

    goto :goto_b

    :cond_11
    if-eq v8, v13, :cond_10

    if-ne v8, v12, :cond_13

    goto :goto_a

    :pswitch_4
    const/16 v12, 0x2d

    const/16 v13, 0x2b

    if-ne v8, v11, :cond_12

    goto :goto_b

    :cond_12
    if-eq v8, v13, :cond_10

    if-ne v8, v12, :cond_13

    goto :goto_a

    :pswitch_5
    const/16 v13, 0x2b

    if-ne v8, v11, :cond_13

    const/4 v10, 0x4

    goto :goto_b

    :cond_13
    const/4 v10, -0x1

    :goto_b
    move v12, v10

    const/16 v10, 0x2d

    const/16 v11, 0x54

    goto :goto_d

    :pswitch_6
    const/16 v11, 0x54

    const/16 v13, 0x2b

    if-ne v8, v11, :cond_14

    const/4 v10, 0x3

    goto :goto_c

    :cond_14
    const/4 v10, -0x1

    :goto_c
    move v12, v10

    const/16 v10, 0x2d

    goto :goto_d

    :pswitch_7
    const/16 v10, 0x2d

    const/16 v11, 0x54

    const/16 v13, 0x2b

    if-ne v8, v10, :cond_15

    add-int/lit8 v12, v12, 0x1

    goto :goto_d

    :cond_15
    if-ne v8, v11, :cond_16

    const/4 v12, 0x3

    goto :goto_d

    :cond_16
    const/4 v12, -0x1

    :goto_d
    if-ne v12, v3, :cond_18

    if-ne v8, v10, :cond_17

    const/4 v3, -0x1

    goto :goto_e

    :cond_17
    const/4 v3, 0x1

    :goto_e
    move/from16 v16, v3

    :cond_18
    move v13, v4

    const/16 v3, 0x54

    const/16 v4, 0x2b

    const/16 v8, 0x2d

    const/4 v11, -0x1

    goto/16 :goto_4

    :cond_19
    :goto_f
    const/4 v0, -0x1

    :goto_10
    if-eq v12, v0, :cond_1f

    if-eq v13, v2, :cond_1a

    goto/16 :goto_12

    .line 894
    :cond_1a
    aget v0, v1, v9

    const/4 v2, 0x1

    aget v4, v1, v2

    aget v8, v1, v17

    .line 895
    aget v7, v1, v7

    aget v5, v1, v5

    aget v9, v1, v10

    aget v6, v1, v6

    .line 896
    aget v3, v1, v3

    aget v1, v1, v18

    const v10, 0x435e7

    if-gt v0, v10, :cond_1f

    if-lt v4, v2, :cond_1f

    const/16 v10, 0xc

    if-gt v4, v10, :cond_1f

    if-lt v8, v2, :cond_1f

    .line 897
    invoke-static {v0, v4}, Lorg/mozilla/javascript/NativeDate;->DaysInMonth(II)I

    move-result v2

    if-gt v8, v2, :cond_1f

    const/16 v2, 0x18

    if-gt v7, v2, :cond_1f

    const/16 v2, 0x18

    if-ne v7, v2, :cond_1b

    if-gtz v5, :cond_1f

    if-gtz v9, :cond_1f

    if-gtz v6, :cond_1f

    :cond_1b
    const/16 v2, 0x3b

    if-gt v5, v2, :cond_1f

    if-gt v9, v2, :cond_1f

    const/16 v10, 0x17

    if-gt v3, v10, :cond_1f

    if-le v1, v2, :cond_1c

    goto :goto_12

    :cond_1c
    mul-int v0, v0, v15

    int-to-double v10, v0

    const/4 v0, 0x1

    sub-int/2addr v4, v0

    int-to-double v12, v4

    int-to-double v14, v8

    int-to-double v7, v7

    int-to-double v4, v5

    move/from16 p0, v1

    int-to-double v0, v9

    move v9, v3

    int-to-double v2, v6

    move-wide/from16 v20, v10

    move-wide/from16 v22, v12

    move-wide/from16 v24, v14

    move-wide/from16 v26, v7

    move-wide/from16 v28, v4

    move-wide/from16 v30, v0

    move-wide/from16 v32, v2

    .line 910
    invoke-static/range {v20 .. v33}, Lorg/mozilla/javascript/NativeDate;->date_msecFromDate(DDDDDDD)D

    move-result-wide v0

    const/4 v2, -0x1

    if-ne v9, v2, :cond_1d

    goto :goto_11

    :cond_1d
    mul-int/lit8 v3, v9, 0x3c

    add-int v3, v3, p0

    int-to-double v2, v3

    const-wide v4, 0x40ed4c0000000000L    # 60000.0

    mul-double v2, v2, v4

    move/from16 v10, v16

    int-to-double v4, v10

    mul-double v2, v2, v4

    sub-double/2addr v0, v2

    :goto_11
    const-wide v2, -0x3cc14df73d240000L    # -8.64E15

    cmpg-double v4, v0, v2

    if-ltz v4, :cond_1f

    const-wide v2, 0x433eb208c2dc0000L    # 8.64E15

    cmpl-double v4, v0, v2

    if-lez v4, :cond_1e

    goto :goto_12

    :cond_1e
    return-wide v0

    .line 926
    :cond_1f
    :goto_12
    sget-wide v0, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x7b2
        0x1
        0x1
        0x0
        0x0
        0x0
        0x0
        -0x1
        -0x1
    .end array-data
.end method

.method private static toLocale_helper(DI)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x6

    if-eq p2, v0, :cond_2

    const/4 v0, 0x7

    if-ne p2, v0, :cond_1

    .line 1268
    sget-object p2, Lorg/mozilla/javascript/NativeDate;->localeDateFormatter:Ljava/text/DateFormat;

    if-nez p2, :cond_0

    .line 1269
    invoke-static {v1}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object p2

    sput-object p2, Lorg/mozilla/javascript/NativeDate;->localeDateFormatter:Ljava/text/DateFormat;

    .line 1272
    :cond_0
    sget-object p2, Lorg/mozilla/javascript/NativeDate;->localeDateFormatter:Ljava/text/DateFormat;

    goto :goto_0

    .line 1274
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1261
    :cond_2
    sget-object p2, Lorg/mozilla/javascript/NativeDate;->localeTimeFormatter:Ljava/text/DateFormat;

    if-nez p2, :cond_3

    .line 1262
    invoke-static {v1}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object p2

    sput-object p2, Lorg/mozilla/javascript/NativeDate;->localeTimeFormatter:Ljava/text/DateFormat;

    .line 1265
    :cond_3
    sget-object p2, Lorg/mozilla/javascript/NativeDate;->localeTimeFormatter:Ljava/text/DateFormat;

    goto :goto_0

    .line 1253
    :cond_4
    sget-object p2, Lorg/mozilla/javascript/NativeDate;->localeDateTimeFormatter:Ljava/text/DateFormat;

    if-nez p2, :cond_5

    .line 1254
    invoke-static {v1, v1}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object p2

    sput-object p2, Lorg/mozilla/javascript/NativeDate;->localeDateTimeFormatter:Ljava/text/DateFormat;

    .line 1258
    :cond_5
    sget-object p2, Lorg/mozilla/javascript/NativeDate;->localeDateTimeFormatter:Ljava/text/DateFormat;

    .line 1277
    :goto_0
    monitor-enter p2

    .line 1278
    :try_start_0
    new-instance v0, Ljava/util/Date;

    double-to-long p0, p0

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    monitor-exit p2

    return-object p0

    :catchall_0
    move-exception p0

    .line 1279
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 139
    sget-object v0, Lorg/mozilla/javascript/NativeDate;->DATE_TAG:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    .line 142
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result v0

    const/4 v2, -0x3

    if-eq v0, v2, :cond_25

    const/4 v2, -0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_24

    const/4 v2, -0x1

    if-eq v0, v2, :cond_23

    const/4 v2, 0x1

    if-eq v0, v2, :cond_21

    const/16 v4, 0x2f

    if-eq v0, v4, :cond_1b

    .line 202
    instance-of p3, p4, Lorg/mozilla/javascript/NativeDate;

    if-eqz p3, :cond_1a

    .line 204
    check-cast p4, Lorg/mozilla/javascript/NativeDate;

    .line 205
    iget-wide v4, p4, Lorg/mozilla/javascript/NativeDate;->date:D

    const-string p1, "Invalid Date"

    const-wide v6, 0x409db00000000000L    # 1900.0

    packed-switch v0, :pswitch_data_0

    .line 378
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    cmpl-double p1, v4, v4

    if-nez p1, :cond_0

    .line 373
    invoke-static {v4, v5}, Lorg/mozilla/javascript/NativeDate;->js_toISOString(D)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "msg.invalid.date"

    .line 375
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "RangeError"

    .line 376
    invoke-static {p2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    .line 347
    :pswitch_1
    invoke-static {p5, v3}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide p1

    cmpl-double p3, p1, p1

    if-nez p3, :cond_4

    .line 349
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x0

    cmpl-double p3, v4, v4

    if-eqz p3, :cond_2

    move-wide v2, v0

    goto :goto_0

    .line 355
    :cond_2
    invoke-static {v4, v5}, Lorg/mozilla/javascript/NativeDate;->LocalTime(D)D

    move-result-wide v2

    :goto_0
    cmpl-double p3, p1, v0

    if-ltz p3, :cond_3

    const-wide v0, 0x4058c00000000000L    # 99.0

    cmpg-double p3, p1, v0

    if-gtz p3, :cond_3

    add-double/2addr p1, v6

    :cond_3
    move-wide v4, p1

    .line 361
    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->MonthFromTime(D)I

    move-result p1

    int-to-double v6, p1

    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->DateFromTime(D)I

    move-result p1

    int-to-double v8, p1

    invoke-static/range {v4 .. v9}, Lorg/mozilla/javascript/NativeDate;->MakeDay(DDD)D

    move-result-wide p1

    .line 363
    invoke-static {v2, v3}, Lorg/mozilla/javascript/NativeDate;->TimeWithinDay(D)D

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lorg/mozilla/javascript/NativeDate;->MakeDate(DD)D

    move-result-wide p1

    .line 364
    invoke-static {p1, p2}, Lorg/mozilla/javascript/NativeDate;->internalUTC(D)D

    move-result-wide p1

    .line 365
    invoke-static {p1, p2}, Lorg/mozilla/javascript/NativeDate;->TimeClip(D)D

    move-result-wide p1

    goto :goto_2

    .line 350
    :cond_4
    :goto_1
    sget-wide p1, Lorg/mozilla/javascript/ScriptRuntime;->NaN:D

    .line 368
    :goto_2
    iput-wide p1, p4, Lorg/mozilla/javascript/NativeDate;->date:D

    .line 369
    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    .line 341
    :pswitch_2
    invoke-static {v4, v5, p5, v0}, Lorg/mozilla/javascript/NativeDate;->makeDate(D[Ljava/lang/Object;I)D

    move-result-wide p1

    .line 342
    iput-wide p1, p4, Lorg/mozilla/javascript/NativeDate;->date:D

    .line 343
    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    .line 331
    :pswitch_3
    invoke-static {v4, v5, p5, v0}, Lorg/mozilla/javascript/NativeDate;->makeTime(D[Ljava/lang/Object;I)D

    move-result-wide p1

    .line 332
    iput-wide p1, p4, Lorg/mozilla/javascript/NativeDate;->date:D

    .line 333
    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    .line 319
    :pswitch_4
    invoke-static {p5, v3}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/mozilla/javascript/NativeDate;->TimeClip(D)D

    move-result-wide p1

    .line 320
    iput-wide p1, p4, Lorg/mozilla/javascript/NativeDate;->date:D

    .line 321
    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    :pswitch_5
    cmpl-double p1, v4, v4

    if-nez p1, :cond_5

    .line 314
    invoke-static {v4, v5}, Lorg/mozilla/javascript/NativeDate;->LocalTime(D)D

    move-result-wide p1

    sub-double/2addr v4, p1

    const-wide p1, 0x40ed4c0000000000L    # 60000.0

    div-double/2addr v4, p1

    .line 316
    :cond_5
    invoke-static {v4, v5}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    :pswitch_6
    cmpl-double p1, v4, v4

    if-nez p1, :cond_7

    const/16 p1, 0x1b

    if-ne v0, p1, :cond_6

    .line 307
    invoke-static {v4, v5}, Lorg/mozilla/javascript/NativeDate;->LocalTime(D)D

    move-result-wide v4

    .line 308
    :cond_6
    invoke-static {v4, v5}, Lorg/mozilla/javascript/NativeDate;->msFromTime(D)I

    move-result p1

    int-to-double v4, p1

    .line 310
    :cond_7
    invoke-static {v4, v5}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    :pswitch_7
    cmpl-double p1, v4, v4

    if-nez p1, :cond_9

    const/16 p1, 0x19

    if-ne v0, p1, :cond_8

    .line 299
    invoke-static {v4, v5}, Lorg/mozilla/javascript/NativeDate;->LocalTime(D)D

    move-result-wide v4

    .line 300
    :cond_8
    invoke-static {v4, v5}, Lorg/mozilla/javascript/NativeDate;->SecFromTime(D)I

    move-result p1

    int-to-double v4, p1

    .line 302
    :cond_9
    invoke-static {v4, v5}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    :pswitch_8
    cmpl-double p1, v4, v4

    if-nez p1, :cond_b

    const/16 p1, 0x17

    if-ne v0, p1, :cond_a

    .line 291
    invoke-static {v4, v5}, Lorg/mozilla/javascript/NativeDate;->LocalTime(D)D

    move-result-wide v4

    .line 292
    :cond_a
    invoke-static {v4, v5}, Lorg/mozilla/javascript/NativeDate;->MinFromTime(D)I

    move-result p1

    int-to-double v4, p1

    .line 294
    :cond_b
    invoke-static {v4, v5}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    :pswitch_9
    cmpl-double p1, v4, v4

    if-nez p1, :cond_d

    const/16 p1, 0x15

    if-ne v0, p1, :cond_c

    .line 283
    invoke-static {v4, v5}, Lorg/mozilla/javascript/NativeDate;->LocalTime(D)D

    move-result-wide v4

    .line 284
    :cond_c
    invoke-static {v4, v5}, Lorg/mozilla/javascript/NativeDate;->HourFromTime(D)I

    move-result p1

    int-to-double v4, p1

    .line 286
    :cond_d
    invoke-static {v4, v5}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    :pswitch_a
    cmpl-double p1, v4, v4

    if-nez p1, :cond_f

    const/16 p1, 0x13

    if-ne v0, p1, :cond_e

    .line 275
    invoke-static {v4, v5}, Lorg/mozilla/javascript/NativeDate;->LocalTime(D)D

    move-result-wide v4

    .line 276
    :cond_e
    invoke-static {v4, v5}, Lorg/mozilla/javascript/NativeDate;->WeekDay(D)I

    move-result p1

    int-to-double v4, p1

    .line 278
    :cond_f
    invoke-static {v4, v5}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    :pswitch_b
    cmpl-double p1, v4, v4

    if-nez p1, :cond_11

    const/16 p1, 0x11

    if-ne v0, p1, :cond_10

    .line 267
    invoke-static {v4, v5}, Lorg/mozilla/javascript/NativeDate;->LocalTime(D)D

    move-result-wide v4

    .line 268
    :cond_10
    invoke-static {v4, v5}, Lorg/mozilla/javascript/NativeDate;->DateFromTime(D)I

    move-result p1

    int-to-double v4, p1

    .line 270
    :cond_11
    invoke-static {v4, v5}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    :pswitch_c
    cmpl-double p1, v4, v4

    if-nez p1, :cond_13

    const/16 p1, 0xf

    if-ne v0, p1, :cond_12

    .line 259
    invoke-static {v4, v5}, Lorg/mozilla/javascript/NativeDate;->LocalTime(D)D

    move-result-wide v4

    .line 260
    :cond_12
    invoke-static {v4, v5}, Lorg/mozilla/javascript/NativeDate;->MonthFromTime(D)I

    move-result p1

    int-to-double v4, p1

    .line 262
    :cond_13
    invoke-static {v4, v5}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    :pswitch_d
    cmpl-double p1, v4, v4

    if-nez p1, :cond_16

    const/16 p1, 0xe

    if-eq v0, p1, :cond_14

    .line 242
    invoke-static {v4, v5}, Lorg/mozilla/javascript/NativeDate;->LocalTime(D)D

    move-result-wide v4

    .line 243
    :cond_14
    invoke-static {v4, v5}, Lorg/mozilla/javascript/NativeDate;->YearFromTime(D)I

    move-result p1

    int-to-double v4, p1

    const/16 p1, 0xc

    if-ne v0, p1, :cond_16

    .line 245
    invoke-virtual {p2, v2}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result p1

    if-eqz p1, :cond_15

    cmpg-double p1, v6, v4

    if-gtz p1, :cond_16

    const-wide p1, 0x409f400000000000L    # 2000.0

    cmpg-double p3, v4, p1

    if-gez p3, :cond_16

    :cond_15
    sub-double/2addr v4, v6

    .line 254
    :cond_16
    invoke-static {v4, v5}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    .line 236
    :pswitch_e
    invoke-static {v4, v5}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    .line 232
    :pswitch_f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "(new Date("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Lorg/mozilla/javascript/ScriptRuntime;->toString(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "))"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_10
    cmpl-double p2, v4, v4

    if-nez p2, :cond_17

    .line 227
    invoke-static {v4, v5}, Lorg/mozilla/javascript/NativeDate;->js_toUTCString(D)Ljava/lang/String;

    move-result-object p1

    :cond_17
    return-object p1

    :pswitch_11
    cmpl-double p2, v4, v4

    if-nez p2, :cond_18

    .line 221
    invoke-static {v4, v5, v0}, Lorg/mozilla/javascript/NativeDate;->toLocale_helper(DI)Ljava/lang/String;

    move-result-object p1

    :cond_18
    return-object p1

    :pswitch_12
    cmpl-double p2, v4, v4

    if-nez p2, :cond_19

    .line 213
    invoke-static {v4, v5, v0}, Lorg/mozilla/javascript/NativeDate;->date_format(DI)Ljava/lang/String;

    move-result-object p1

    :cond_19
    return-object p1

    .line 203
    :cond_1a
    invoke-static {p1}, Lorg/mozilla/javascript/IdScriptableObject;->incompatibleCallError(Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/EcmaError;

    throw v1

    .line 169
    :cond_1b
    invoke-static {p2, p3, p4}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    .line 170
    sget-object p4, Lorg/mozilla/javascript/ScriptRuntime;->NumberClass:Ljava/lang/Class;

    invoke-static {p1, p4}, Lorg/mozilla/javascript/ScriptRuntime;->toPrimitive(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    .line 171
    instance-of p5, p4, Ljava/lang/Number;

    if-eqz p5, :cond_1d

    .line 172
    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p4

    cmpl-double v0, p4, p4

    if-nez v0, :cond_1c

    .line 173
    invoke-static {p4, p5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p4

    if-eqz p4, :cond_1d

    :cond_1c
    return-object v1

    :cond_1d
    const-string p4, "toISOString"

    .line 177
    invoke-static {p1, p4}, Lorg/mozilla/javascript/ScriptableObject;->getProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    .line 178
    sget-object v0, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    if-eq p5, v0, :cond_20

    .line 183
    instance-of v0, p5, Lorg/mozilla/javascript/Callable;

    if-eqz v0, :cond_1f

    .line 189
    check-cast p5, Lorg/mozilla/javascript/Callable;

    sget-object p4, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    invoke-interface {p5, p2, p3, p1, p4}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 191
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->isPrimitive(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1e

    return-object p1

    .line 192
    :cond_1e
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "msg.toisostring.must.return.primitive"

    invoke-static {p2, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError1(Ljava/lang/String;Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    .line 184
    :cond_1f
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p5}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "msg.isnt.function.in"

    invoke-static {p3, p4, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->typeError3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    .line 179
    :cond_20
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "msg.function.not.found.in"

    invoke-static {p2, p4, p1}, Lorg/mozilla/javascript/ScriptRuntime;->typeError2(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_21
    if-eqz p4, :cond_22

    .line 161
    invoke-static {}, Lorg/mozilla/javascript/NativeDate;->now()D

    move-result-wide p1

    const/4 p3, 0x2

    invoke-static {p1, p2, p3}, Lorg/mozilla/javascript/NativeDate;->date_format(DI)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 162
    :cond_22
    invoke-static {p5}, Lorg/mozilla/javascript/NativeDate;->jsConstructor([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 154
    :cond_23
    invoke-static {p5}, Lorg/mozilla/javascript/NativeDate;->jsStaticFunction_UTC([Ljava/lang/Object;)D

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    .line 149
    :cond_24
    invoke-static {p5, v3}, Lorg/mozilla/javascript/ScriptRuntime;->toString([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p1

    .line 150
    invoke-static {p1}, Lorg/mozilla/javascript/NativeDate;->date_parseString(Ljava/lang/String;)D

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    .line 145
    :cond_25
    invoke-static {}, Lorg/mozilla/javascript/NativeDate;->now()D

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    .line 140
    :cond_26
    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/IdScriptableObject;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected fillConstructorProperties(Lorg/mozilla/javascript/IdFunctionObject;)V
    .locals 12

    .line 68
    sget-object v2, Lorg/mozilla/javascript/NativeDate;->DATE_TAG:Ljava/lang/Object;

    const/4 v3, -0x3

    const-string v4, "now"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 70
    sget-object v8, Lorg/mozilla/javascript/NativeDate;->DATE_TAG:Ljava/lang/Object;

    const/4 v9, -0x2

    const-string v10, "parse"

    const/4 v11, 0x1

    move-object v6, p0

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 72
    sget-object v2, Lorg/mozilla/javascript/NativeDate;->DATE_TAG:Ljava/lang/Object;

    const/4 v3, -0x1

    const-string v4, "UTC"

    const/4 v5, 0x7

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/IdScriptableObject;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 74
    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->fillConstructorProperties(Lorg/mozilla/javascript/IdFunctionObject;)V

    return-void
.end method

.method protected findPrototypeId(Ljava/lang/String;)I
    .locals 14

    .line 1599
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x6

    const/16 v3, 0x8

    const/16 v4, 0x53

    const/16 v5, 0x9

    const/16 v6, 0x54

    const/16 v7, 0x44

    const/16 v8, 0x4d

    const/4 v9, 0x3

    const/16 v10, 0x74

    const/16 v11, 0x73

    const/16 v12, 0x67

    const/4 v13, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 1697
    :pswitch_1
    invoke-virtual {p1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v12, :cond_0

    const/16 v1, 0x1c

    const-string v0, "getUTCMilliseconds"

    goto/16 :goto_2

    :cond_0
    if-ne v0, v11, :cond_1

    const/16 v1, 0x20

    const-string v0, "setUTCMilliseconds"

    goto/16 :goto_2

    :cond_1
    if-ne v0, v10, :cond_24

    .line 1701
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v7, :cond_2

    const/4 v1, 0x7

    const-string v0, "toLocaleDateString"

    goto/16 :goto_2

    :cond_2
    if-ne v0, v6, :cond_24

    const-string v0, "toLocaleTimeString"

    const/4 v1, 0x6

    goto/16 :goto_2

    :pswitch_2
    const/16 v1, 0x1d

    const-string v0, "getTimezoneOffset"

    goto/16 :goto_2

    .line 1692
    :pswitch_3
    invoke-virtual {p1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v12, :cond_3

    const/16 v1, 0x1b

    const-string v0, "getMilliseconds"

    goto/16 :goto_2

    :cond_3
    if-ne v0, v11, :cond_24

    const/16 v1, 0x1f

    const-string v0, "setMilliseconds"

    goto/16 :goto_2

    .line 1687
    :pswitch_4
    invoke-virtual {p1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v12, :cond_4

    const/16 v1, 0xe

    const-string v0, "getUTCFullYear"

    goto/16 :goto_2

    :cond_4
    if-ne v0, v11, :cond_5

    const/16 v1, 0x2c

    const-string v0, "setUTCFullYear"

    goto/16 :goto_2

    :cond_5
    if-ne v0, v10, :cond_24

    const/4 v1, 0x5

    const-string v0, "toLocaleString"

    goto/16 :goto_2

    .line 1675
    :pswitch_5
    invoke-virtual {p1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v12, :cond_7

    .line 1677
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v8, :cond_6

    const/16 v1, 0x18

    const-string v0, "getUTCMinutes"

    goto/16 :goto_2

    :cond_6
    if-ne v0, v4, :cond_24

    const/16 v1, 0x1a

    const-string v0, "getUTCSeconds"

    goto/16 :goto_2

    :cond_7
    if-ne v0, v11, :cond_24

    .line 1682
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v8, :cond_8

    const/16 v1, 0x24

    const-string v0, "setUTCMinutes"

    goto/16 :goto_2

    :cond_8
    if-ne v0, v4, :cond_24

    const/16 v1, 0x22

    const-string v0, "setUTCSeconds"

    goto/16 :goto_2

    .line 1671
    :pswitch_6
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v7, :cond_9

    const/4 v1, 0x4

    const-string v0, "toDateString"

    goto/16 :goto_2

    :cond_9
    if-ne v0, v6, :cond_24

    const-string v0, "toTimeString"

    const/4 v1, 0x3

    goto/16 :goto_2

    .line 1649
    :pswitch_7
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x46

    if-eq v0, v1, :cond_f

    if-eq v0, v8, :cond_e

    if-eq v0, v11, :cond_d

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_1

    .line 1657
    :pswitch_8
    invoke-virtual {p1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x72

    if-ne v0, v12, :cond_b

    .line 1659
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_a

    const/16 v1, 0x16

    const-string v0, "getUTCHours"

    goto/16 :goto_2

    :cond_a
    if-ne v0, v10, :cond_24

    const/16 v1, 0x10

    const-string v0, "getUTCMonth"

    goto/16 :goto_2

    :cond_b
    if-ne v0, v11, :cond_24

    .line 1664
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_c

    const/16 v1, 0x26

    const-string v0, "setUTCHours"

    goto/16 :goto_2

    :cond_c
    if-ne v0, v10, :cond_24

    const/16 v1, 0x2a

    const-string v0, "setUTCMonth"

    goto/16 :goto_2

    :pswitch_9
    const-string v0, "toUTCString"

    goto :goto_0

    :pswitch_a
    const/16 v1, 0x2e

    const-string v0, "toISOString"

    goto/16 :goto_2

    :cond_d
    const/4 v1, 0x1

    const-string v0, "constructor"

    goto/16 :goto_2

    :cond_e
    const-string v0, "toGMTString"

    :goto_0
    const/16 v1, 0x8

    goto/16 :goto_2

    .line 1650
    :cond_f
    invoke-virtual {p1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v12, :cond_10

    const/16 v1, 0xd

    const-string v0, "getFullYear"

    goto/16 :goto_2

    :cond_10
    if-ne v0, v11, :cond_24

    const/16 v1, 0x2b

    const-string v0, "setFullYear"

    goto/16 :goto_2

    .line 1632
    :pswitch_b
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v8, :cond_12

    .line 1634
    invoke-virtual {p1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v12, :cond_11

    const/16 v1, 0x17

    const-string v0, "getMinutes"

    goto/16 :goto_2

    :cond_11
    if-ne v0, v11, :cond_24

    const/16 v1, 0x23

    const-string v0, "setMinutes"

    goto/16 :goto_2

    :cond_12
    if-ne v0, v4, :cond_14

    .line 1639
    invoke-virtual {p1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v12, :cond_13

    const/16 v1, 0x19

    const-string v0, "getSeconds"

    goto/16 :goto_2

    :cond_13
    if-ne v0, v11, :cond_24

    const/16 v1, 0x21

    const-string v0, "setSeconds"

    goto/16 :goto_2

    :cond_14
    const/16 v1, 0x55

    if-ne v0, v1, :cond_24

    .line 1644
    invoke-virtual {p1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v12, :cond_15

    const/16 v1, 0x12

    const-string v0, "getUTCDate"

    goto/16 :goto_2

    :cond_15
    if-ne v0, v11, :cond_24

    const/16 v1, 0x28

    const-string v0, "setUTCDate"

    goto/16 :goto_2

    :pswitch_c
    const/16 v1, 0x14

    const-string v0, "getUTCDay"

    goto/16 :goto_2

    .line 1619
    :pswitch_d
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x48

    if-eq v0, v2, :cond_1a

    if-eq v0, v8, :cond_18

    const/16 v2, 0x6f

    if-eq v0, v2, :cond_17

    if-eq v0, v10, :cond_16

    goto/16 :goto_1

    :cond_16
    const-string v0, "toString"

    goto/16 :goto_2

    :cond_17
    const-string v0, "toSource"

    const/16 v1, 0x9

    goto/16 :goto_2

    .line 1624
    :cond_18
    invoke-virtual {p1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v12, :cond_19

    const/16 v1, 0xf

    const-string v0, "getMonth"

    goto/16 :goto_2

    :cond_19
    if-ne v0, v11, :cond_24

    const/16 v1, 0x29

    const-string v0, "setMonth"

    goto/16 :goto_2

    .line 1620
    :cond_1a
    invoke-virtual {p1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v12, :cond_1b

    const/16 v1, 0x15

    const-string v0, "getHours"

    goto/16 :goto_2

    :cond_1b
    if-ne v0, v11, :cond_24

    const/16 v1, 0x25

    const-string v0, "setHours"

    goto/16 :goto_2

    .line 1604
    :pswitch_e
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v7, :cond_21

    if-eq v0, v6, :cond_1f

    const/16 v1, 0x59

    if-eq v0, v1, :cond_1d

    const/16 v1, 0x75

    if-eq v0, v1, :cond_1c

    goto :goto_1

    :cond_1c
    const/16 v1, 0xa

    const-string v0, "valueOf"

    goto :goto_2

    .line 1613
    :cond_1d
    invoke-virtual {p1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v12, :cond_1e

    const/16 v1, 0xc

    const-string v0, "getYear"

    goto :goto_2

    :cond_1e
    if-ne v0, v11, :cond_24

    const/16 v1, 0x2d

    const-string v0, "setYear"

    goto :goto_2

    .line 1609
    :cond_1f
    invoke-virtual {p1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v12, :cond_20

    const/16 v1, 0xb

    const-string v0, "getTime"

    goto :goto_2

    :cond_20
    if-ne v0, v11, :cond_24

    const/16 v1, 0x1e

    const-string v0, "setTime"

    goto :goto_2

    .line 1605
    :cond_21
    invoke-virtual {p1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v12, :cond_22

    const/16 v1, 0x11

    const-string v0, "getDate"

    goto :goto_2

    :cond_22
    if-ne v0, v11, :cond_24

    const/16 v1, 0x27

    const-string v0, "setDate"

    goto :goto_2

    .line 1600
    :pswitch_f
    invoke-virtual {p1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v12, :cond_23

    const/16 v1, 0x13

    const-string v0, "getDay"

    goto :goto_2

    :cond_23
    if-ne v0, v10, :cond_24

    const/16 v1, 0x2f

    const-string v0, "toJSON"

    goto :goto_2

    :cond_24
    :goto_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    if-eqz v0, :cond_25

    if-eq v0, p1, :cond_25

    .line 1707
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_25

    const/4 v1, 0x0

    :cond_25
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x53
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "Date"

    return-object v0
.end method

.method public getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 56
    sget-object p1, Lorg/mozilla/javascript/ScriptRuntime;->StringClass:Ljava/lang/Class;

    .line 57
    :cond_0
    invoke-super {p0, p1}, Lorg/mozilla/javascript/ScriptableObject;->getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method getJSTimeValue()D
    .locals 2

    .line 62
    iget-wide v0, p0, Lorg/mozilla/javascript/NativeDate;->date:D

    return-wide v0
.end method

.method protected initPrototypeId(I)V
    .locals 5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    .line 130
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v0, "toJSON"

    goto :goto_3

    :pswitch_1
    const-string v0, "toISOString"

    goto/16 :goto_4

    :pswitch_2
    const-string v0, "setYear"

    goto :goto_3

    :pswitch_3
    const-string v0, "setUTCFullYear"

    goto :goto_1

    :pswitch_4
    const-string v0, "setFullYear"

    goto :goto_1

    :pswitch_5
    const-string v0, "setUTCMonth"

    goto :goto_2

    :pswitch_6
    const-string v0, "setMonth"

    goto :goto_2

    :pswitch_7
    const-string v0, "setUTCDate"

    goto :goto_3

    :pswitch_8
    const-string v0, "setDate"

    goto :goto_3

    :pswitch_9
    const-string v1, "setUTCHours"

    goto :goto_0

    :pswitch_a
    const-string v1, "setHours"

    :goto_0
    move-object v0, v1

    const/4 v4, 0x4

    goto/16 :goto_4

    :pswitch_b
    const-string v0, "setUTCMinutes"

    goto :goto_1

    :pswitch_c
    const-string v0, "setMinutes"

    :goto_1
    const/4 v4, 0x3

    goto/16 :goto_4

    :pswitch_d
    const-string v0, "setUTCSeconds"

    goto :goto_2

    :pswitch_e
    const-string v0, "setSeconds"

    :goto_2
    const/4 v4, 0x2

    goto/16 :goto_4

    :pswitch_f
    const-string v0, "setUTCMilliseconds"

    goto :goto_3

    :pswitch_10
    const-string v0, "setMilliseconds"

    goto :goto_3

    :pswitch_11
    const-string v0, "setTime"

    :goto_3
    const/4 v4, 0x1

    goto/16 :goto_4

    :pswitch_12
    const-string v0, "getTimezoneOffset"

    goto/16 :goto_4

    :pswitch_13
    const-string v0, "getUTCMilliseconds"

    goto/16 :goto_4

    :pswitch_14
    const-string v0, "getMilliseconds"

    goto/16 :goto_4

    :pswitch_15
    const-string v0, "getUTCSeconds"

    goto/16 :goto_4

    :pswitch_16
    const-string v0, "getSeconds"

    goto :goto_4

    :pswitch_17
    const-string v0, "getUTCMinutes"

    goto :goto_4

    :pswitch_18
    const-string v0, "getMinutes"

    goto :goto_4

    :pswitch_19
    const-string v0, "getUTCHours"

    goto :goto_4

    :pswitch_1a
    const-string v0, "getHours"

    goto :goto_4

    :pswitch_1b
    const-string v0, "getUTCDay"

    goto :goto_4

    :pswitch_1c
    const-string v0, "getDay"

    goto :goto_4

    :pswitch_1d
    const-string v0, "getUTCDate"

    goto :goto_4

    :pswitch_1e
    const-string v0, "getDate"

    goto :goto_4

    :pswitch_1f
    const-string v0, "getUTCMonth"

    goto :goto_4

    :pswitch_20
    const-string v0, "getMonth"

    goto :goto_4

    :pswitch_21
    const-string v0, "getUTCFullYear"

    goto :goto_4

    :pswitch_22
    const-string v0, "getFullYear"

    goto :goto_4

    :pswitch_23
    const-string v0, "getYear"

    goto :goto_4

    :pswitch_24
    const-string v0, "getTime"

    goto :goto_4

    :pswitch_25
    const-string v0, "valueOf"

    goto :goto_4

    :pswitch_26
    const-string v0, "toSource"

    goto :goto_4

    :pswitch_27
    const-string v0, "toUTCString"

    goto :goto_4

    :pswitch_28
    const-string v0, "toLocaleDateString"

    goto :goto_4

    :pswitch_29
    const-string v0, "toLocaleTimeString"

    goto :goto_4

    :pswitch_2a
    const-string v0, "toLocaleString"

    goto :goto_4

    :pswitch_2b
    const-string v0, "toDateString"

    goto :goto_4

    :pswitch_2c
    const-string v0, "toTimeString"

    goto :goto_4

    :pswitch_2d
    const-string v0, "toString"

    goto :goto_4

    :pswitch_2e
    const/4 v0, 0x7

    const-string v1, "constructor"

    move-object v0, v1

    const/4 v4, 0x7

    .line 132
    :goto_4
    sget-object v1, Lorg/mozilla/javascript/NativeDate;->DATE_TAG:Ljava/lang/Object;

    invoke-virtual {p0, v1, p1, v0, v4}, Lorg/mozilla/javascript/IdScriptableObject;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
