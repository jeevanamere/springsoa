import { LightningElement, track, wire } from 'lwc';
import fetchData from '@salesforce/apex/GetAccountData.fetchData'
export default class AccountDataTable extends LightningElement {
 columns = [
    { label: 'Name', fieldName: 'Name',type:'text' },
    { label: 'Type', fieldName: 'Type', type:'text' },
    { label: 'Phone', fieldName: 'Phone', type:'phone' },
    { label: 'AnnualRevenue', fieldName: 'AnnualRevenue', type: 'currency' },
    { label: 'Industry', fieldName: 'Industry', type: 'text' },
];
    @track data = [];
    @wire(fetchData)
    fetchData({data}){
        if(data){
            this.data = data
        }
    }
}