.class public final enum Lorg/schabi/newpipe/extractor/InfoItem$InfoType;
.super Ljava/lang/Enum;
.source "InfoItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/extractor/InfoItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InfoType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/schabi/newpipe/extractor/InfoItem$InfoType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

.field public static final enum CHANNEL:Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

.field public static final enum COMMENT:Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

.field public static final enum PLAYLIST:Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

.field public static final enum STREAM:Lorg/schabi/newpipe/extractor/InfoItem$InfoType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 69
    new-instance v0, Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    const/4 v1, 0x0

    const-string v2, "STREAM"

    invoke-direct {v0, v2, v1}, Lorg/schabi/newpipe/extractor/InfoItem$InfoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/extractor/InfoItem$InfoType;->STREAM:Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    .line 70
    new-instance v0, Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    const/4 v2, 0x1

    const-string v3, "PLAYLIST"

    invoke-direct {v0, v3, v2}, Lorg/schabi/newpipe/extractor/InfoItem$InfoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/extractor/InfoItem$InfoType;->PLAYLIST:Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    .line 71
    new-instance v0, Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    const/4 v3, 0x2

    const-string v4, "CHANNEL"

    invoke-direct {v0, v4, v3}, Lorg/schabi/newpipe/extractor/InfoItem$InfoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/extractor/InfoItem$InfoType;->CHANNEL:Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    .line 72
    new-instance v0, Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    const/4 v4, 0x3

    const-string v5, "COMMENT"

    invoke-direct {v0, v5, v4}, Lorg/schabi/newpipe/extractor/InfoItem$InfoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/extractor/InfoItem$InfoType;->COMMENT:Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    const/4 v0, 0x4

    .line 68
    new-array v0, v0, [Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    sget-object v5, Lorg/schabi/newpipe/extractor/InfoItem$InfoType;->STREAM:Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    aput-object v5, v0, v1

    sget-object v1, Lorg/schabi/newpipe/extractor/InfoItem$InfoType;->PLAYLIST:Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/extractor/InfoItem$InfoType;->CHANNEL:Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/schabi/newpipe/extractor/InfoItem$InfoType;->COMMENT:Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    aput-object v1, v0, v4

    sput-object v0, Lorg/schabi/newpipe/extractor/InfoItem$InfoType;->$VALUES:[Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/InfoItem$InfoType;
    .locals 1

    .line 68
    const-class v0, Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    return-object p0
.end method

.method public static values()[Lorg/schabi/newpipe/extractor/InfoItem$InfoType;
    .locals 1

    .line 68
    sget-object v0, Lorg/schabi/newpipe/extractor/InfoItem$InfoType;->$VALUES:[Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    invoke-virtual {v0}, [Lorg/schabi/newpipe/extractor/InfoItem$InfoType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    return-object v0
.end method
