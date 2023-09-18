import React from "react";
import Carousel from "react-bootstrap/Carousel";
import "../assets/styles/landingPage.css";
import { Link } from "react-router-dom";
import { connect } from "react-redux";
import { searchProduct } from "../redux/actions/user";
import logo from "../assets/logo.png";

class LandingPage extends React.Component {
  state = {
    searchProduct: "",
  };

  render() {
    return (
      <div className="mb-5 mx-5 d-flex box justify-content-between">
        <div className="col-3">
          <Carousel>
            <Carousel.Item>
              <img
                className="carousel-card"
                src="https://d29c1z66frfv6c.cloudfront.net/pub/media/catalog/product/large/45b144f2589e2e8fcadce33d4fbdafdc7db9af78_xxl-1.jpg"
                alt="First slide"
              />

              <Carousel.Caption>
                <h2>Everyday Dress</h2>
                <p>Our collection of lovely dresses.</p>
              </Carousel.Caption>
            </Carousel.Item>
            <Carousel.Item>
              <img
                className="carousel-card"
                src="https://d29c1z66frfv6c.cloudfront.net/pub/media/catalog/product/large/5d6ece299b71485b46c83d9aeb6a9676e26a7873_xxl-1.jpg"
                alt="Second slide"
              />

              <Carousel.Caption>
                <h2>Formal Shirt</h2>
                <p>Looking confident in our formal attire collections.</p>
              </Carousel.Caption>
            </Carousel.Item>
            <Carousel.Item>
              <img
                className="carousel-card"
                src="https://d29c1z66frfv6c.cloudfront.net/pub/media/catalog/product/large/31493e0cb7cb326b5cddff6eea7c5bd9b4924214_xxl-1.jpg"
                alt="Third slide"
              />

              <Carousel.Caption>
                <h2>Semi-formal Trousers</h2>
                <p>Comfortable trousers for everyday use.</p>
              </Carousel.Caption>
            </Carousel.Item>
          </Carousel>
        </div>
        <div className="p-5 col-8 d-flex flex-column justify-content-center mb-5">
          <div className="d-flex justify-content-center align-items-center">
            <img src={logo} alt="logo" className="big-logo" />
          </div>
          <div className="d-flex flex-column align-items-center ">
            <h1>Fashion is an inseparable part of our lives.</h1>
            <h4>
              Explore our collections to find the exact attire for your every
              needs.{" "}
            </h4>
            {this.props.userGlobal.auth_status === "admin" ? null : this.props
                .userGlobal.auth_status === "superadmin" ? null : (
              <Link className="mt-2" to={"/products"}>
                <button
                  onClick={() => this.props.searchProduct(this.state)}
                  className="btn btn-basic mt-2"
                >
                  Explore now
                </button>
              </Link>
            )}
          </div>
        </div>
      </div>
    );
  }
}

const mapStateToProps = (state) => {
  return {
    userGlobal: state.user,
  };
};

const mapDispatchToProps = {
  searchProduct,
};

export default connect(mapStateToProps, mapDispatchToProps)(LandingPage);
