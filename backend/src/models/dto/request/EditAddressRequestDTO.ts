export default interface EditAddressRequestDTO {
    id: number,
    name?: string,
    pincode?: string,
    address?: string,
    city?: string,
    state?: string,
    phoneNumber?: string,
    isDefault?: boolean,
}