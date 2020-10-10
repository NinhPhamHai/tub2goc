.class public final enum Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;
.super Ljava/lang/Enum;
.source "com.google.firebase:firebase-firestore@@21.4.0"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/ListenRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TargetChangeCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;

.field public static final enum ADD_TARGET:Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;

.field public static final enum REMOVE_TARGET:Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;

.field public static final enum TARGETCHANGE_NOT_SET:Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 26
    new-instance v0, Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "ADD_TARGET"

    invoke-direct {v0, v3, v2, v1}, Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;->ADD_TARGET:Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;

    .line 27
    new-instance v0, Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;

    const/4 v3, 0x3

    const/4 v4, 0x1

    const-string v5, "REMOVE_TARGET"

    invoke-direct {v0, v5, v4, v3}, Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;->REMOVE_TARGET:Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;

    .line 28
    new-instance v0, Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;

    const-string v5, "TARGETCHANGE_NOT_SET"

    invoke-direct {v0, v5, v1, v2}, Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;->TARGETCHANGE_NOT_SET:Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;

    .line 24
    new-array v0, v3, [Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;

    sget-object v3, Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;->ADD_TARGET:Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;

    aput-object v3, v0, v2

    sget-object v2, Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;->REMOVE_TARGET:Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;

    aput-object v2, v0, v4

    sget-object v2, Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;->TARGETCHANGE_NOT_SET:Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;->$VALUES:[Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput p3, p0, Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 44
    :cond_0
    sget-object p0, Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;->REMOVE_TARGET:Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;

    return-object p0

    .line 43
    :cond_1
    sget-object p0, Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;->ADD_TARGET:Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;

    return-object p0

    .line 45
    :cond_2
    sget-object p0, Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;->TARGETCHANGE_NOT_SET:Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;
    .locals 1

    .line 24
    const-class v0, Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;

    return-object p0
.end method

.method public static values()[Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;
    .locals 1

    .line 24
    sget-object v0, Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;->$VALUES:[Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;

    invoke-virtual {v0}, [Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;->value:I

    return v0
.end method
