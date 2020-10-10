.class public final enum Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;
.super Ljava/lang/Enum;
.source "com.google.firebase:firebase-firestore@@21.4.0"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/StructuredQuery$CompositeFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Operator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;

.field public static final enum AND:Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;

.field public static final enum OPERATOR_UNSPECIFIED:Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;

.field public static final enum UNRECOGNIZED:Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1473
    new-instance v0, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;

    const/4 v1, 0x0

    const-string v2, "OPERATOR_UNSPECIFIED"

    invoke-direct {v0, v2, v1, v1}, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;->OPERATOR_UNSPECIFIED:Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;

    .line 1481
    new-instance v0, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;

    const/4 v2, 0x1

    const-string v3, "AND"

    invoke-direct {v0, v3, v2, v2}, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;->AND:Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;

    .line 1482
    new-instance v0, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;

    const/4 v3, 0x2

    const-string v4, "UNRECOGNIZED"

    const/4 v5, -0x1

    invoke-direct {v0, v4, v3, v5}, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;->UNRECOGNIZED:Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;

    const/4 v0, 0x3

    .line 1464
    new-array v0, v0, [Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;

    sget-object v4, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;->OPERATOR_UNSPECIFIED:Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;

    aput-object v4, v0, v1

    sget-object v1, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;->AND:Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;->UNRECOGNIZED:Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;->$VALUES:[Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;

    .line 1528
    new-instance v0, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator$1;

    invoke-direct {v0}, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator$1;-><init>()V

    sput-object v0, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1537
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1538
    iput p3, p0, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1518
    :cond_0
    sget-object p0, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;->AND:Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;

    return-object p0

    .line 1517
    :cond_1
    sget-object p0, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;->OPERATOR_UNSPECIFIED:Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;
    .locals 1

    .line 1464
    const-class v0, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;

    return-object p0
.end method

.method public static values()[Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;
    .locals 1

    .line 1464
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;->$VALUES:[Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;

    invoke-virtual {v0}, [Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 1504
    iget v0, p0, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;->value:I

    return v0
.end method
